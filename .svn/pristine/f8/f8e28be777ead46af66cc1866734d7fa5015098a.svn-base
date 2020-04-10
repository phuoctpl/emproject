package com.fudn.em.socketserver;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.websocket.EncodeException;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import com.fudn.em.common.Constant;
import com.fudn.em.decoder.MessageDecoder;
import com.fudn.em.encoder.MessageEncoder;
import com.fudn.em.message.ChatMessage;
import com.fudn.em.message.FriendListMessage;
import com.fudn.em.message.KaraokeSongMessage;
import com.fudn.em.message.Message;
import com.fudn.em.message.NotificationListMessage;
import com.fudn.em.message.OldMessage;
import com.fudn.em.message.UserMessage;
import com.fudn.em.message.VideoCallMessage;
import com.fudn.em.model.bo.ChatMessageBO;
import com.fudn.em.model.bo.MemberBO;
import com.fudn.em.model.bo.NotificationBO;

@ServerEndpoint(value = Constant.SERVER_END_POINT, encoders = { MessageEncoder.class }, decoders = { MessageDecoder.class })
public class ServerEndPoint {
		
	private ChatMessageBO messageBO;
	private MemberBO memberBO;
	private NotificationBO notificationBO;
	
	public static Set<Session> setUsersSession = Collections
			.synchronizedSet(new HashSet<Session>());
	public static Map<String, List<Session>> mapUsersSession = new HashMap<String, List<Session>>();

	@OnOpen
	public void handleOpen(Session userSession) {
		if (userSession.getUserProperties().get(Constant.KEY_USER_ID) == null) {
			setUsersSession.add(userSession);
		}
	}

	@OnMessage
	public void handleMessage(Message incommingMessage, Session userSession)
			throws IOException, EncodeException {
		List<Session> sessionList = null;
		if (incommingMessage instanceof UserMessage) {
			UserMessage userMessage = (UserMessage) incommingMessage;
			switch (userMessage.getMessageType()) {
			case Message.NEW_MEMBER_JOIN:
				if(userSession.getUserProperties().get(Constant.KEY_USER_ID)==null){
					userSession.getUserProperties().put(Constant.KEY_USER_ID,
							userMessage.getUserId());
					userSession.getUserProperties().put(Constant.KEY_USERNAME, userMessage.getUsername());
				}
				sessionList = mapUsersSession.get(userMessage.getUserId());
				if(sessionList == null){
					sessionList = new ArrayList<Session>();
					sessionList.add(userSession);
					mapUsersSession.put(userMessage.getUserId(), sessionList);
				}else{
					sessionList.remove(userSession);
					sessionList.add(userSession);
					mapUsersSession.put(userMessage.getUserId(), sessionList);
				}
				FriendListMessage friendListMessage = getFriendList(userMessage.getUserId());
				List<UserMessage> friendList = friendListMessage.getFriendList();
				List<Session> friendSessionList = null;
				int numberOfFriend = friendList.size();
				for (int i=0; i<numberOfFriend; i++) {
					UserMessage friend = friendList.get(i);
					friendSessionList = mapUsersSession.get(friend.getUserId());
					if (friendSessionList != null) {
						for(Session friendSession : friendSessionList){
							friendSession.getBasicRemote().sendObject(userMessage);
						}
					}
				}
				friendListMessage.setMessageType(Message.REQUEST_FRIEND_LIST);
				userSession.getBasicRemote().sendObject(friendListMessage);
				break;
			default:
				break;
			}
		}
		if (incommingMessage instanceof ChatMessage) {
			ChatMessage chatMessage = (ChatMessage) incommingMessage;
			List<Session> receiverSessionList = null;
			switch (chatMessage.getMessageType()) {
			case Message.NEW_CHAT_MESSAGE:
				receiverSessionList = mapUsersSession.get(chatMessage.getReceiverId());
				if(receiverSessionList != null){
					for(Session receiverSession : receiverSessionList){
						receiverSession.getBasicRemote().sendObject(chatMessage);
					}
				}
				receiverSessionList = mapUsersSession.get(chatMessage.getUserId());
				for(Session us : receiverSessionList){
					us.getBasicRemote().sendObject(chatMessage);
				}
				messageBO = new ChatMessageBO();
				messageBO.createNewMessage(chatMessage);
				break;
			case Message.SHARE_AUDIO:
				chatMessage.setAudioId((int)(Math.random()*100000));
				receiverSessionList = mapUsersSession.get(chatMessage.getReceiverId());
				if(receiverSessionList != null){
					for(Session receiverSession : receiverSessionList){
						receiverSession.getBasicRemote().sendObject(chatMessage);
					}
				}
				userSession.getBasicRemote().sendObject(chatMessage);
				messageBO = new ChatMessageBO();
				messageBO.createNewMessage(chatMessage);
				break;
			case Message.MARK_READ:
				
				break;
			default:
				break;
			}
		}
		if(incommingMessage instanceof OldMessage){
			OldMessage oldMessage = (OldMessage)incommingMessage;
			switch (oldMessage.getMessageType()) {
			case Message.READ_OLD_MESSAGE:
				messageBO = new ChatMessageBO();
				oldMessage.setOldMessage(messageBO.readOldMessage(oldMessage.getUserId(), oldMessage.getReceiverId(), oldMessage.getStartCount()));
				userSession.getBasicRemote().sendObject(oldMessage);
				break;
			default:
				break;
			}
		}
		if(incommingMessage instanceof NotificationListMessage){
			NotificationListMessage notificationMessage = (NotificationListMessage) incommingMessage;
			String userId = userSession.getUserProperties().get(Constant.KEY_USER_ID).toString();
			switch (notificationMessage.getMessageType()) {
			case Message.REFRESH_NOTIFICATION:
				notificationBO = new NotificationBO();
				notificationMessage.setNotificationListMessage(notificationBO.getAllNotification(userId));
				notificationMessage.setUserId(userId);
				userSession.getBasicRemote().sendObject(notificationMessage);
				break;

			default:
				break;
			}
		}
		if(incommingMessage instanceof VideoCallMessage){
			VideoCallMessage videoCallMessage = (VideoCallMessage) incommingMessage;
			videoCallMessage.setCallId((int)(Math.random()*1000000));
			List<Session> receiverSessionList = null;
			receiverSessionList = mapUsersSession.get(videoCallMessage.getReceiverId());
			if(receiverSessionList != null){
				for(Session receiverSession : receiverSessionList){
					receiverSession.getBasicRemote().sendObject(videoCallMessage);
				}
			}
			userSession.getBasicRemote().sendObject(videoCallMessage);			
		}
		if(incommingMessage instanceof KaraokeSongMessage){
			KaraokeSongMessage karaokeSongMessage = (KaraokeSongMessage)incommingMessage;
			List<Session> receiverSessionList = mapUsersSession.get(karaokeSongMessage.getReceiverId());
			if(receiverSessionList != null){
				for(Session receiverSession : receiverSessionList){
					receiverSession.getBasicRemote().sendObject(karaokeSongMessage);
				}
			}
			receiverSessionList = mapUsersSession.get(karaokeSongMessage.getUserId());
			if(receiverSessionList != null){
				for(Session receiverSession : receiverSessionList){
					receiverSession.getBasicRemote().sendObject(karaokeSongMessage);
				}
			}
		}
	}

	@OnClose
	public void handleClose(Session userSession) throws IOException,
			EncodeException {
		UserMessage userMessage = new UserMessage();
		userMessage.setMessageType(Message.TURN_OFF_CHAT);
		userMessage.setUsername(userSession.getUserProperties().get(Constant.KEY_USERNAME)
				.toString());
		userMessage.setUserId(userSession.getUserProperties().get(Constant.KEY_USER_ID)
				.toString());
		for (Session session : setUsersSession) {
			session.getBasicRemote().sendObject(userMessage);
		}
		setUsersSession.remove(userSession);
		mapUsersSession.remove(userSession.getUserProperties().get(Constant.KEY_USERNAME));
	}

	private FriendListMessage getFriendList(String userId) {
		memberBO = new MemberBO();
		FriendListMessage friendListMessage = new FriendListMessage();
		List<UserMessage> friendList = memberBO.getAllFriendList(userId);
		int numberOfFriend = friendList.size();
		UserMessage friend = null;
		List<Session> friendSessionList = null;
		for(int i=0; i<numberOfFriend; i++){
			friend = friendList.get(i);
			friendSessionList = mapUsersSession.get(friend.getUserId());
			if(friendSessionList!=null){
				friend.setStatus(Constant.STATUS_USER_ONLINE);
			}else{
				friend.setStatus(Constant.STATUS_USER_OFFLINE);
			}
		}
		friendListMessage.setFriendList(friendList);
		friendListMessage.setMessageType(Message.REQUEST_FRIEND_LIST);
		return friendListMessage;
	}
}

package com.fudn.em.encoder;

import java.util.List;

import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObject;
import javax.websocket.EncodeException;
import javax.websocket.Encoder;
import javax.websocket.EndpointConfig;

import com.fudn.em.common.Constant;
import com.fudn.em.message.ChatMessage;
import com.fudn.em.message.FriendListMessage;
import com.fudn.em.message.KaraokeSongMessage;
import com.fudn.em.message.Message;
import com.fudn.em.message.NotificationListMessage;
import com.fudn.em.message.OldMessage;
import com.fudn.em.message.UserMessage;
import com.fudn.em.message.VideoCallMessage;
import com.fudn.em.model.bean.Notification;

public class MessageEncoder implements Encoder.Text<Message> {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void init(EndpointConfig arg0) {
		// TODO Auto-generated method stub

	}

	@Override
	public String encode(Message message) throws EncodeException {
		if(message instanceof ChatMessage){
			ChatMessage chatMessage = (ChatMessage) message;
			String returnMessage = Json.createObjectBuilder()
					.add(Constant.KEY_USER_ID, chatMessage.getUserId())
					.add(Constant.KEY_USERNAME, chatMessage.getUsername())
					.add(Constant.KEY_RECEIVER_ID, chatMessage.getReceiverId())
					.add(Constant.KEY_CONTENT, chatMessage.getContent())
					.add(Constant.KEY_CREATE_TIME, chatMessage.getCreateTime())
					.add(Constant.KEY_MESSAGE_TYPE, chatMessage.getMessageType())
					.add(Constant.KEY_AUDIO_ID, chatMessage.getAudioId())
					.build().toString();
			return returnMessage;
		}
		if(message instanceof UserMessage){
			UserMessage userMessage = (UserMessage) message;
			return Json.createObjectBuilder()
					.add(Constant.KEY_USERNAME, userMessage.getUsername())
					.add(Constant.KEY_USER_ID, userMessage.getUserId())
					.add(Constant.KEY_MESSAGE_TYPE, userMessage.getMessageType())
					.add(Constant.KEY_STATUS, userMessage.getStatus())
					.build().toString();
		}
		if(message instanceof FriendListMessage){
			FriendListMessage friendListMessage = (FriendListMessage) message;
			List<UserMessage> listUsername = friendListMessage.getFriendList();
			JsonArrayBuilder arrayBuilder = Json.createArrayBuilder();
			JsonObject jsonObject = null;
			for(UserMessage userMessage : listUsername){
				jsonObject = Json.createObjectBuilder()
						.add(Constant.KEY_USERNAME, userMessage.getUsername())
						.add(Constant.KEY_USER_ID, userMessage.getUserId())
						.add(Constant.KEY_MESSAGE_TYPE, userMessage.getMessageType())
						.add(Constant.KEY_STATUS, userMessage.getStatus())
						.build();
				arrayBuilder.add(jsonObject);
			}
			return Json.createObjectBuilder()
					.add(Constant.KEY_FRIEND_LIST, arrayBuilder)
					.add(Constant.KEY_MESSAGE_TYPE, friendListMessage.getMessageType()).build().toString();
		}
		if(message instanceof OldMessage){
			OldMessage oldMessage = (OldMessage) message;
			List<ChatMessage> oldMessageList = oldMessage.getOldMessage();
			JsonObject jsonObject = null;
			JsonArrayBuilder arrayBuilder = Json.createArrayBuilder();
			for(ChatMessage chatMessage : oldMessageList){
				jsonObject = Json.createObjectBuilder()
						.add(Constant.KEY_USER_ID, chatMessage.getUserId())
						.add(Constant.KEY_RECEIVER_ID, chatMessage.getReceiverId())
						.add(Constant.KEY_CONTENT, chatMessage.getContent())
						.add(Constant.KEY_CREATE_TIME, chatMessage.getCreateTime())
						.add(Constant.KEY_MESSAGE_TYPE, chatMessage.getMessageType()).build();
				arrayBuilder.add(jsonObject);
			}
			return Json.createObjectBuilder()
					.add(Constant.KEY_USER_ID, oldMessage.getUserId())
					.add(Constant.KEY_RECEIVER_ID, oldMessage.getReceiverId())
					.add(Constant.KEY_START_COUNT, oldMessage.getStartCount())
					.add(Constant.KEY_MESSAGE_TYPE, oldMessage.getMessageType())
					.add(Constant.KEY_OLD_MESSAGE_LIST, arrayBuilder)
					.build().toString();
		}
		if(message instanceof NotificationListMessage){
			NotificationListMessage notificationListMessage = (NotificationListMessage)message;
			if(notificationListMessage.getMessageType() == Message.REFRESH_NOTIFICATION){
				List<Notification> notificationList = notificationListMessage.getNotificationListMessage();
				JsonObject jsonObject = null;
				JsonArrayBuilder jsonArrayBuilder = Json.createArrayBuilder();
				for(Notification notification : notificationList){
					jsonObject = Json.createObjectBuilder()
							.add(Constant.KEY_USER_CREATE_ID, notification.getUserCreateId())
							.add(Constant.KEY_USER_CREATE_NAME, notification.getUserCreateName())
							.add(Constant.KEY_USER_INVOLVED_ID, notification.getUserInvolvedId())
							.add(Constant.KEY_LINK_INVOLVE,notification.getLinkInvolve())
							.add(Constant.KEY_SORT_CONTENT,notification.getSortContent())
							.add(Constant.KEY_CREATE_TIME,notification.getCreateTime())
							.add(Constant.KEY_STATUS,notification.getStatus())
							.add(Constant.KEY_TYPE, notification.getType()).build();
					jsonArrayBuilder.add(jsonObject);
				}
				return Json.createObjectBuilder()
						.add(Constant.KEY_NOTIFICATION_LIST, jsonArrayBuilder)
						.add(Constant.KEY_MESSAGE_TYPE, notificationListMessage.getMessageType()).build().toString();
			}
		}
		if(message instanceof VideoCallMessage){
			VideoCallMessage videoCallMessage = (VideoCallMessage)message;
			return Json.createObjectBuilder()
					.add(Constant.KEY_CALL_ID, videoCallMessage.getCallId())
					.add(Constant.KEY_USER_ID, videoCallMessage.getUserId())
					.add(Constant.KEY_USERNAME, videoCallMessage.getUsername())
					.add(Constant.KEY_RECEIVER_ID, videoCallMessage.getReceiverId())
					.add(Constant.KEY_MESSAGE_TYPE, videoCallMessage.getMessageType())
					.build().toString();
		}
		if(message instanceof KaraokeSongMessage){
			KaraokeSongMessage karaokeSongMessage = (KaraokeSongMessage)message;
			if(karaokeSongMessage.getMessageType() == Message.CHANGE_KARAOKE_SONG){
				return Json.createObjectBuilder()
						.add(Constant.KEY_USER_ID, karaokeSongMessage.getUserId())
						.add(Constant.KEY_RECEIVER_ID, karaokeSongMessage.getReceiverId())
						.add(Constant.KEY_KARAOKE_SONG, karaokeSongMessage.getKaraokeSong())
						.add(Constant.KEY_MESSAGE_TYPE, karaokeSongMessage.getMessageType())
						.build().toString();
			}else{
				return Json.createObjectBuilder()
						.add(Constant.KEY_USER_ID, karaokeSongMessage.getUserId())
						.add(Constant.KEY_RECEIVER_ID, karaokeSongMessage.getReceiverId())
						.add(Constant.KEY_MESSAGE_TYPE, karaokeSongMessage.getMessageType())
						.build().toString();
			}
		}
		return null;
	}

}

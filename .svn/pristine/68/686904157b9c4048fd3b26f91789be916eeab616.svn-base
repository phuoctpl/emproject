package com.fudn.em.decoder;

import java.io.StringReader;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.json.Json;
import javax.json.JsonObject;
import javax.websocket.DecodeException;
import javax.websocket.Decoder;
import javax.websocket.EndpointConfig;

import com.fudn.em.common.Constant;
import com.fudn.em.message.ChatMessage;
import com.fudn.em.message.KaraokeSongMessage;
import com.fudn.em.message.Message;
import com.fudn.em.message.NotificationListMessage;
import com.fudn.em.message.OldMessage;
import com.fudn.em.message.UserMessage;
import com.fudn.em.message.VideoCallMessage;

public class MessageDecoder implements Decoder.Text<Message>{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init(EndpointConfig arg0) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Message decode(String message) throws DecodeException {
		JsonObject jsonObject = Json.createReader(new StringReader(message)).readObject();
		int messageType = jsonObject.getInt(Constant.KEY_MESSAGE_TYPE);
		switch(messageType){
			case Message.NEW_CHAT_MESSAGE:{
				ChatMessage chatMessage = new ChatMessage();
				chatMessage.setContent(jsonObject.getString(Constant.KEY_CONTENT));
				chatMessage.setMessageType(messageType);
				chatMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				chatMessage.setUsername(jsonObject.getString(Constant.KEY_USERNAME));
				chatMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				Date dateNow = new Date();
				SimpleDateFormat sfm = new SimpleDateFormat(Constant.DATE_TIME_FORMAT_VIETNAMESE);
				chatMessage.setCreateTime(sfm.format(dateNow));
				return chatMessage;
			}
			case Message.SHARE_AUDIO:{
				ChatMessage chatMessage = new ChatMessage();
				chatMessage.setContent(jsonObject.getString(Constant.KEY_CONTENT));
				chatMessage.setMessageType(messageType);
				chatMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				chatMessage.setUsername(jsonObject.getString(Constant.KEY_USERNAME));
				chatMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				Date dateNow = new Date();
				SimpleDateFormat sfm = new SimpleDateFormat(Constant.DATE_TIME_FORMAT_VIETNAMESE);
				chatMessage.setCreateTime(sfm.format(dateNow));
				return chatMessage;
			}
			case Message.TAKE_VIDEO_CALL : {
				VideoCallMessage videoCallMessage = new VideoCallMessage();
				videoCallMessage.setMessageType(Message.TAKE_VIDEO_CALL);
				videoCallMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				videoCallMessage.setUsername(jsonObject.getString(Constant.KEY_USERNAME));
				videoCallMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				return videoCallMessage;
			}
			case Message.NEW_MEMBER_JOIN:{
				UserMessage userMessage = new UserMessage();
				userMessage.setMessageType(messageType);
				userMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				userMessage.setUsername(jsonObject.getString(Constant.KEY_USERNAME));
				userMessage.setStatus(jsonObject.getString(Constant.KEY_STATUS));
				return userMessage;
			}
			case Message.READ_OLD_MESSAGE:{
				OldMessage oldMessage = new OldMessage();
				oldMessage.setMessageType(messageType);
				oldMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				oldMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				oldMessage.setStartCount(jsonObject.getInt(Constant.KEY_START_COUNT));
				return oldMessage;
			}
			case Message.MARK_READ: {
				ChatMessage chatMessage = new ChatMessage();
				chatMessage.setMessageId(jsonObject.getString(Constant.KEY_MESSAGE_ID));
				chatMessage.setMessageType(messageType);
				break;
			}
			case Message.REFRESH_NOTIFICATION: {
				NotificationListMessage notificationListMessage = new NotificationListMessage();
				notificationListMessage.setMessageType(messageType);
				return notificationListMessage;
			}
			case Message.CHANGE_KARAOKE_SONG : {
				KaraokeSongMessage karaokeSongMessage = new KaraokeSongMessage();
				karaokeSongMessage.setMessageType(messageType);
				karaokeSongMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				karaokeSongMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				karaokeSongMessage.setKaraokeSong(jsonObject.getString(Constant.KEY_KARAOKE_SONG));
				return karaokeSongMessage;
			}
			case Message.PLAY_KARAOKE_SONG : {
				KaraokeSongMessage karaokeSongMessage = new KaraokeSongMessage();
				karaokeSongMessage.setMessageType(messageType);
				karaokeSongMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				karaokeSongMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				return karaokeSongMessage;
			}
			case Message.PAUSE_KARAOKE_SONG : {
				KaraokeSongMessage karaokeSongMessage = new KaraokeSongMessage();
				karaokeSongMessage.setMessageType(messageType);
				karaokeSongMessage.setUserId(jsonObject.getString(Constant.KEY_USER_ID));
				karaokeSongMessage.setReceiverId(jsonObject.getString(Constant.KEY_RECEIVER_ID));
				return karaokeSongMessage;
			}
			default:{
				return null;
			}
		}
		return null;
	}

	@Override
	public boolean willDecode(String message) {
		boolean flag = true;
		try{
			Json.createReader(new StringReader(message)).readObject();
		}catch(Exception e){
			flag = false;
		}
		return flag;
	}

}

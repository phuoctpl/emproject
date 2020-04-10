package com.fudn.em.model.bo;

import java.util.List;

import com.fudn.em.message.ChatMessage;
import com.fudn.em.message.Message;
import com.fudn.em.model.dao.ChatMessageDAO;

public class ChatMessageBO {
	private ChatMessageDAO messageDAO = new ChatMessageDAO();
	public void createNewMessage(ChatMessage message){
		message.setStatus(Message.MESSAGE_NEW);
		messageDAO.addNewMessage(message);
	}
	public List<ChatMessage> readOldMessage(String userId, String receiverId, int startCount){
		messageDAO = new ChatMessageDAO();
		return messageDAO.readOldMessage(userId, receiverId, startCount);
	}
	public void markRead(String userId, String receiverId){
		messageDAO = new ChatMessageDAO();
		messageDAO.markRead(userId, receiverId);
	}
}

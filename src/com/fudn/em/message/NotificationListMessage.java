package com.fudn.em.message;

import java.util.List;

import com.fudn.em.model.bean.Notification;

public class NotificationListMessage implements Message{
	private List<Notification> notificationListMessage;
	private int messageType;
	private String userId;

	public List<Notification> getNotificationListMessage() {
		return notificationListMessage;
	}

	public void setNotificationListMessage(List<Notification> notificationListMessage) {
		this.notificationListMessage = notificationListMessage;
	}

	public int getMessageType() {
		return messageType;
	}

	public void setMessageType(int messageType) {
		this.messageType = messageType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}

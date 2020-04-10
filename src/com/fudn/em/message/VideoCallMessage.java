package com.fudn.em.message;

public class VideoCallMessage implements Message{
	private int messageType;
	private String userId;
	private String username;
	private String receiverId;
	private int callId;
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getCallId() {
		return callId;
	}
	public void setCallId(int callId) {
		this.callId = callId;
	}
	public String getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(String receiverId) {
		this.receiverId = receiverId;
	}
}

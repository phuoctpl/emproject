package com.fudn.em.message;

import java.util.List;

public class FriendListMessage implements Message {
	private List<UserMessage> friendList;
	private int messageType;

	public int getMessageType() {
		return messageType;
	}

	public void setMessageType(int messageType) {
		this.messageType = messageType;
	}

	public List<UserMessage> getFriendList() {
		return friendList;
	}

	public void setFriendList(List<UserMessage> friendList) {
		this.friendList = friendList;
	}
}

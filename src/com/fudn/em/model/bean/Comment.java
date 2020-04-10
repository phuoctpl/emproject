package com.fudn.em.model.bean;

import java.util.Date;

public class Comment {
	
	private String userID;
	private String user;
	private String userImage;
	private String content;
	private Date commentTime;
	
	public String getUser() {
		return user;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public Date getCommentTime() {
		return commentTime;
	}
	
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

}

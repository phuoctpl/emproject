package com.fudn.em.model.bean;

import java.util.Date;
import java.util.List;

public class Post {
	
	private String id;
	private String title;
	private String image;
	private String description;
	private String content;
	private int type;
	private String userID;
	private String user;
	private String userImage;
	private String musicGenre;
	private long numberOfView;
	private long numberOfReport;
	private float rating;
	private long numberOfRating;
	private Date postTime;
	private int state;
	private List<Comment> commentList;

	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getUser() {
		return user;
	}
	
	public void setUser(String user) {
		this.user = user;
	}
	
	public String getMusicGenre() {
		return musicGenre;
	}
	
	public void setMusicGenre(String musicGenre) {
		this.musicGenre = musicGenre;
	}
	
	public long getNumberOfView() {
		return numberOfView;
	}
	
	public void setNumberOfView(long numberOfView) {
		this.numberOfView = numberOfView;
	}
	
	public long getNumberOfReport() {
		return numberOfReport;
	}
	
	public void setNumberOfReport(long numberOfReport) {
		this.numberOfReport = numberOfReport;
	}
	
	public float getRating() {
		return rating;
	}
	
	public void setRating(float rating) {
		this.rating = rating;
	}
	
	public long getNumberOfRating() {
		return numberOfRating;
	}
	
	public void setNumberOfRating(long numberOfRating) {
		this.numberOfRating = numberOfRating;
	}
	
	public Date getPostTime() {
		return postTime;
	}
	
	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<Comment> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
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

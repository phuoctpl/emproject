package com.fudn.em.model.bean;

import java.util.Date;
import java.util.List;

public class Contest {
	
	private String _id;
	private String userCreated;
	private String name;
	private String description;
	private String content;
	private Date startDate;
	private List<String> user;
	private double prize;
	private String winner;
	private String avatar;
	private int active;
	
	public String getUserCreated() {
		return userCreated;
	}
	public void setUserCreated(String userCreated) {
		this.userCreated = userCreated;
	}
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public List<String> getUser() {
		return user;
	}
	public void setUser(List<String> user) {
		this.user = user;
	}
	public double getPrize() {
		return prize;
	}
	public void setPrize(double prize) {
		this.prize = prize;
	}
	public String getWinner() {
		return winner;
	}
	public void setWinner(String winner) {
		this.winner = winner;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
}

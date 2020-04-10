package com.fudn.em.model.bean;

public class Notification {
	private String userCreateId;
	private String userCreateName;
	private String notificationId;
	private String userInvolvedId;
	private String sortContent;
	private String linkInvolve;
	private String createTime;
	private byte type;
	private byte status;
	public String getNotificationId() {
		return notificationId;
	}
	public void setNotificationId(String notificationId) {
		this.notificationId = notificationId;
	}
	public String getUserInvolvedId() {
		return userInvolvedId;
	}
	public void setUserInvolvedId(String userInvolvedId) {
		this.userInvolvedId = userInvolvedId;
	}
	public String getSortContent() {
		return sortContent;
	}
	public void setSortContent(String sortContent) {
		this.sortContent = sortContent;
	}
	public String getLinkInvolve() {
		return linkInvolve;
	}
	public void setLinkInvolve(String linkInvolve) {
		this.linkInvolve = linkInvolve;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}
	public byte getType() {
		return type;
	}
	public void setType(byte type) {
		this.type = type;
	}
	public byte getStatus() {
		return status;
	}
	public void setStatus(byte status) {
		this.status = status;
	}
	public String getUserCreateName() {
		return userCreateName;
	}
	public void setUserCreateName(String userCreateName) {
		this.userCreateName = userCreateName;
	}
	public String getUserCreateId() {
		return userCreateId;
	}
	public void setUserCreateId(String userCreateId) {
		this.userCreateId = userCreateId;
	}
}

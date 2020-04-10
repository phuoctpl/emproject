package com.fudn.em.model.bean;

import java.util.Date;
import java.util.List;

public class Member {
	
	private String _id;
	private String fbId;
	private String email;
	private String passwd;
	private String name;
	private String gender;
	private String address;
	private String country;
	private String city;
	private String phone;
	private String avatar;
	private List<String> ratedPost; 
	private List<String> reportedPost; 
	private int memberRole;
	private Date enterDate;
	private int prestigePoint;
	private String musicGenre;
	private String systemUnit;
	private Date birthDate;
	private int active;
	private String confirmEmail;
	private String description;
	private List<Friend> friList;
	
	public List<String> getReportedPost() {
		return reportedPost;
	}
	public void setReportedPost(List<String> reportedPost) {
		this.reportedPost = reportedPost;
	}
	public String getSystemUnit() {
		return systemUnit;
	}
	public void setSystemUnit(String systemUnit) {
		this.systemUnit = systemUnit;
	}
	public int getPrestigePoint() {
		return prestigePoint;
	}
	public void setPrestigePoint(int prestigePoint) {
		this.prestigePoint = prestigePoint;
	}
	public String getMusicGenre() {
		return musicGenre;
	}
	public void setMusicGenre(String musicGenre) {
		this.musicGenre = musicGenre;
	}	
	
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getMemberRole() {
		return memberRole;
	}
	public void setMemberRole(int memberRole) {
		this.memberRole = memberRole;
	}
	public Date getEnterDate() {
		return enterDate;
	}
	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getConfirmEmail() {
		return confirmEmail;
	}
	public void setConfirmEmail(String confirmEmail) {
		this.confirmEmail = confirmEmail;
	}
	public String getFbId() {
		return fbId;
	}
	public void setFbId(String fbId) {
		this.fbId = fbId;
	}
	public List<Friend> getFriList() {
		return friList;
	}
	public void setFriList(List<Friend> friList) {
		this.friList = friList;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public List<String> getRatedPost() {
		return ratedPost;
	}
	public void setRatedPost(List<String> ratedPost) {
		this.ratedPost = ratedPost;
	}
}

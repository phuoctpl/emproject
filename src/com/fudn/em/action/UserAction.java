package com.fudn.em.action;

import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.struts2.ServletActionContext;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.common.EmailUtility;
import com.fudn.em.model.bean.Friend;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bo.UploadBO;
import com.fudn.em.model.bo.UserBO;


public class UserAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	// user
	private Member user;
	private String userId;
	private String _id = (String) sessionMap.get("userId");
	private String email;
	private String passwd;
	private String passwd1;
	private String passwd2;
	private String name;
	private String gender;
	private String address;
	private String country;
	private String city;
	private String phone;
	private String avatar;
	private int memberRole;
	private Date enterDate;
	private double pretigePoint;
	private String musicGenre;
	private Date birthDate;
	private int active;
	private String confirmEmail;
	private int numberFriend;
	private String mainUserId;
	private String friendId;
	private List<Friend> allFriend;
	private String test;
	
	//post bean
	private String title;
	private String description;
	private String state;
	private String content;
	private String type;
	private Boolean found;
	
	private List<String> genders;
	private List<String> countries;
	private List<String> genres;
	private List<String> states;
	private Date postTime;
	private String postId;
	
	private static final String MALE = "Male";
	private static final String FEMALE = "Female";
	private static final String UNKNOWN = "Unknown";
	
	// SMTP properties - fetched from struts.xml
	private String host;
	private String port;
	private String userName;
	
	// e-mail fields - fetched from EmailForm.jsp
	private String subject;
	private String message;
	
	//message error
	private String errorMessage;
	private String checkUser=null;
	private boolean editUser= false;
	
	// upload avatar image
	private File fileUpload;
	private File fileUpload1;
	private File file;
	private String fileUploadFileName;
	private String fileUploadContentType;
	
	private String DEFAULT_URL ;
	
	
	public UserAction(){
		
		HttpServletRequest request = ServletActionContext.getRequest();
		DEFAULT_URL = request.getServletContext().getRealPath("/");
		
//		str = url.toString().replace("\", "/");
		System.out.println("dir: "+DEFAULT_URL);
		genders = new ArrayList<String>();
		genders.add(MALE);
		genders.add(FEMALE);
		genders.add(UNKNOWN);
		
		countries = new ArrayList<String>();
		countries.add("Viet nam");
		countries.add("Campuchia");
		countries.add("Lao");
		countries.add("--Please Select--");
		
		genres = new ArrayList<String>();
		genres.add("--Please Select--");
		genres.add("Blue");
		genres.add("Rock");
		genres.add("Classic");
		
		states = new ArrayList<String>();
		states.add("Public");
		states.add("Private");
	}
	// do register
	public String doRegister() {
		
		try {
		email = getEmail();
		Member user = new Member();
		UserBO userBO = new UserBO();
		
		System.out.println("done 0");
		//check email

		user = userBO.getInforUserByEmail(email);
			if(user!=null){
				System.out.println("done 2");
				setErrorMessage("Email has been exited");
				System.out.println(getErrorMessage());
				return INPUT;
			}
		user = new Member();	
		user.setName(getName().toLowerCase());
		user.setEmail(getEmail());
		user.setPasswd(CommonsUtils.encryptPassword(getPasswd1()));
		
		user.setActive(0);
		user.setConfirmEmail(RandomStringUtils.randomAlphanumeric(20).toUpperCase());
//		user.setEnterDate(new Date(System.currentTimeMillis()));
		user.setEnterDate(new Date());
		user.setMemberRole(3);
		user.setAvatar("icon-user-default.png");
		
		user.setGender("");
		user.setAddress("");
		user.setCountry("");
		user.setCity("");
		user.setPhone("");
		user.setMusicGenre("");
		
		userBO.insertUser(user);
		
			subject = "[EMusic] Verify Your Email Address with EMusic";
			message = "Dear "+ getName()+", <br>"
					+ "You recently joined one of the EMusic with the email address: " +user.getEmail()+"<br><br>"
					+ "To confirm your email address, click on the link below :<br>"
					+ "http://localhost:8080/EM_Framework/pages/user/confirmedMail.action?email="+user.getEmail()+"&confirmEmail=" + user.getConfirmEmail()+""
					+ "(If you cannot access this link, copy and paste the entire URL into your browser. !)<br>"
					+ "Thank you !<br>"
					+ "EMusic: http://EMusic.com";
					
			EmailUtility.sendEmail(host, port, userName, passwd, email,
					subject, message);
		
		} catch (AddressException e) {
			return "error";
			// TODO Auto-generated catch block
//			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			return "error";
//			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	// forget password
	public String sendEmailForgetPassword(){
		System.out.println(getEmail());
		Member oldUser = new Member();
		UserBO userBO = new UserBO();
		
		oldUser = userBO.getInforUserByEmail(getEmail());
		Member user = new Member();
		
		user.setEmail(getEmail());
		user.setConfirmEmail(RandomStringUtils.randomAlphanumeric(20).toUpperCase());
		
		userBO.updateConfirmEmail(oldUser,user);
		
		if(getEmail()!=null){
			subject = "[EMusic] Verify Your Email Address with EMusic";
			message = "Dear "+ getName()+", <br>"
					+ "You recently joined one of the EMusic with the email address: " +user.getEmail()+"<br><br>"
					+ "To change your password, click on the link below :<br>"
					+ "http://localhost:8080/EM_Framework/pages/user/resetPassword.action?email="+user.getEmail()+"&confirmEmail=" + user.getConfirmEmail()+"<br>"
					+ "(If you cannot access this link, copy and paste the entire URL into your browser. !)<br>"
					+ "Thank you !<br>"
					+ "EMusic: http://EMusic.com";
//			message = "Click vao link http://localhost:8080/EM_Framework/pages/user/resetPassword.action?email="+user.getEmail()+"&confirmEmail=" + user.getConfirmEmail();
			try {
				EmailUtility.sendEmail(host, port, userName, passwd, email,
						subject, message);
			} catch (AddressException e) {
				return "error";
				// TODO Auto-generated catch block
//				e.printStackTrace();
			} catch (MessagingException e) {
				return "error";
				// TODO Auto-generated catch block
//				e.printStackTrace();
			}
			
		}
		
		return SUCCESS;
	}
	// reset password
	public String resetPassword(){
		System.out.println(getPasswd1());
		System.out.println(getEmail());
		System.out.println(getConfirmEmail());
		
		if(getPasswd1()!=null){
			Member user = new Member();
			UserBO userBO = new UserBO();
			user.setEmail(getEmail());
			user.setConfirmEmail(getConfirmEmail());
			user.setPasswd(CommonsUtils.encryptPassword(getPasswd1()));
			userBO.resetPassword(user);
			
			return SUCCESS;
		}
		
		return INPUT;
	}
	public static void main(String[] args) {
		UserBO userBO = new UserBO();
		Member user = new Member();
		String a ="12345";
		user = userBO.getInforUser("53ca95517c67dd54f9e98410");
		System.out.println(user.getPasswd());
		if(CommonsUtils.authenticatePassword(a, user.getPasswd())){
			System.out.println("====");
		} else {
			System.out.println("noo");
		}
	}
	
	//change password
	public String changePassword(){
		
		UserBO userBO = new UserBO();
		Member user = new Member();

		user = userBO.getInforUser(_id);
		errorMessage = "success";

		if(CommonsUtils.authenticatePassword(passwd, user.getPasswd())){
			System.out.println("done");
			user = new Member();
			user.set_id(_id);
			user.setPasswd(CommonsUtils.encryptPassword(passwd1));
			userBO.changePassowrd(user);
			return SUCCESS;
		}
		else {
			errorMessage = "error";
		}
		
		return ERROR;
	}
	
	// xac nhan email
	public String confirmedMail(){
		Member user = new Member();
		UserBO userBO = new UserBO();
		user = userBO.getInforUserByEmail(getEmail());
		
//		user.setActive(0);
		System.out.println("xong 0"+ user.getActive());

		if(user.getActive()==0){
			Member userNew = new Member();
			userNew.setActive(1);
			
			System.out.println("xong 1" + user.getEmail() + user.getConfirmEmail());
			//update active 0 -> 1
			userBO.updateInforUser(user,userNew);
			
			System.out.println("xong 2" + user.getEmail() + user.getConfirmEmail() + user.getActive() + userNew.getActive());
			return SUCCESS;
		}
		return ERROR;
	}
	
	// display user profile
	public String displayUserProfile() {
		UserBO userBO = new UserBO();
		Member user = new Member();
		set_id(_id);
		user = userBO.getInforUser(get_id());
		
		email = user.getEmail();
		passwd = user.getPasswd();
		name = user.getName();
		gender = user.getGender();
		address = user.getAddress();
		country = user.getCountry();
		city = user.getCity();
		phone = user.getPhone();
		birthDate = user.getBirthDate();
		musicGenre = user.getMusicGenre();
		pretigePoint = user.getPrestigePoint();
		avatar = user.getAvatar();
		return SUCCESS;
	}

	
	// edit user profile
	public String editUserProfile() throws UnknownHostException {
		UserBO userBO = new UserBO();
		
		//get old user infor
		Member user = new Member();
		user = userBO.getInforUser(_id);
		
		//get new user infor
		
		Member userNew = new Member();
		userNew.set_id(_id);
		userNew.setName(name);
		userNew.setEmail(email);
		userNew.setGender(gender);
		userNew.setAddress(address);
		userNew.setCountry(country);
		userNew.setCity(city);
		userNew.setPhone(phone);
		userNew.setGender(gender);
		userNew.setMusicGenre(musicGenre);
		userNew.setBirthDate(birthDate);
		userNew.setPasswd(passwd1);
		
		
		//save link avatar
		
				System.out.println("name :" +fileUpload);
//				fileUploadFileName = (new Date(System.currentTimeMillis())+"_"+fileUploadFileName);
//				Date date = Calendar.getInstance().getTime();
//				String prefixAvatar = date.getDate() + "" + date.getDay() + "" + date.getHours()+ "" + date.getMinutes() + "" + date.getSeconds();
				
				
				File saveFilePath = new File(DEFAULT_URL+"assets/images/avatars/"+ userId + ".png");
				System.out.println(""+saveFilePath);
				try {
					FileUtils.copyFile(fileUpload, saveFilePath);
				} catch (IOException ex) {
					System.out.println("Couldn't save file: " + ex.getMessage());
				}
		userNew.setAvatar(userId +".png");
		avatar = userNew.getAvatar();
		
		System.out.println("file: "+ userNew.getAvatar());
		userBO.editInforUser(user, userNew);
		
		
		return SUCCESS;
		
	}

	
	// upload avatar
	public String uploadAvatarImage(){
		
		System.out.println("name :" +fileUpload);
		
		File saveFilePath = new File("E:/Upload/" + fileUploadFileName);
//		File saveFilePath = new File("/" + fileUploadFileName);
		System.out.println(""+saveFilePath);
		/*try {
			FileUtils.copyFile(fileUpload, saveFilePath);
		} catch (IOException ex) {
			System.out.println("Couldn't save file: " + ex.getMessage());
		}*/
		return SUCCESS;
	}

	
	// upload song
	public String uploadSong(){

		content = fileUploadFileName.toString();
		type = ".mp3";
		found = content.contains(type);
		System.out.println("overthere :" +found);
		try {
			
			Post post = new Post();
			if(found == true){
				File saveFilePath = new File("C:/quangnbn/EMS/WebContent/assets/media_player/audio/content/mp3/" + fileUploadFileName);
//				File saveFilePath = new File(DEFAULT_URL+"assets/media_player/audio/content/mp3/" + fileUploadFileName);
				FileUtils.copyFile(fileUpload, saveFilePath);
				post.setType(0);
				post.setContent("assets/media_player/audio/content/mp3/"+ fileUploadFileName);
			} else {
				File saveFilePath = new File("C:/quangnbn/EMS/WebContent/assets/media_player/video/content/video/" + fileUploadFileName);
//				File saveFilePath = new File(DEFAULT_URL+"assets/media_player/video/content/video/" + fileUploadFileName);
				FileUtils.copyFile(fileUpload, saveFilePath);
				post.setType(1);
				post.setContent("assets/media_player/video/content/video/"+ fileUploadFileName);
			}
			post.setUserID(_id);
			post.setPostTime(new Date());
			post.setUser(_id);
			postTime = post.getPostTime();
			UploadBO postBo = new UploadBO();
			
			postBo.uploadSong(post);
			//get id
			post = new Post();
			
			post = postBo.getSongId(postTime);
			postId = post.getId();
			System.out.println("id la"+post.getId());
		} catch (IOException ex) {
			System.out.println("Couldn't save file: " + ex.getMessage());
		}
		return SUCCESS;
	}
	
	// upload song info
	public String uploadInfoSong(){
		System.out.println("name :" +fileUpload);
		System.out.println(postId);
		System.out.println(postTime);
		
		//upload image song
		
		File saveFilePath = new File("C:/quangnbn/EMS/WebContent/assets/images/item/" + postId +".png");
//		File saveFilePath = new File(DEFAULT_URL+"assets/images/item/" + postId +".png");
		try {
			FileUtils.copyFile(fileUpload, saveFilePath);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		UploadBO postBO = new UploadBO();
		Post oldPost = new Post();
		System.out.println("done 0");
		oldPost = postBO.getSongIdById(postId);
		
		Post post = new Post();
		post.setTitle(getTitle().toLowerCase());
		post.setMusicGenre(getMusicGenre());
		post.setDescription(getDescription());
		if(getState().equals("Public")){
			post.setState(1);
		}else {post.setState(2);}
		post.setImage("assets/images/item/"+postId+".png");
		System.out.println();
		
		System.out.println("done 1");
		postBO.insertSongInfo(oldPost,post);
		System.out.println("done 2");
		return SUCCESS;
	}

	//display channel
	public String displayChanel(){
		
		System.out.println("1"+userId);
		Member user = new Member();
		if(userId.equals(sessionMap.get("userId"))){
			_id = (String) sessionMap.get("userId");
			setEditUser(true);
		}else {
			_id = userId;
			setEditUser(false);
		}
		UserBO userBO = new UserBO();
		
		//get friend and display friend tab
		user = userBO.getInforUser(_id);
		numberFriend = userBO.getNumberFriend(user.getFriList());
		
		allFriend = userBO.getAllFriend(user.getFriList());
		
		for (int i = 0; i < allFriend.size(); i++) {
			System.out.println(allFriend.get(i).getUserId());
			System.out.println(allFriend.get(i).getStatus());
			System.out.println(allFriend.get(i).getFriAvatar());
			System.out.println(allFriend.get(i).getFriName());
		}
		
		
		//get user
		userId = getUserId();
		
		email = user.getEmail();
		passwd = user.getPasswd();
		name = user.getName();
		gender = user.getGender();
		address = user.getAddress();
		country = user.getCountry();
		city = user.getCity();
		phone = user.getPhone();
		birthDate = user.getBirthDate();
		musicGenre = user.getMusicGenre();
		pretigePoint = user.getPrestigePoint();
		avatar = user.getAvatar();
		description = user.getDescription();
		
		//check friend
		if(userId.equals(sessionMap.get("userId"))){
			errorMessage = "user";
		}
		else {
			for (int i = 0; i < user.getFriList().size(); i++) {
				if(user.getFriList().get(i).getUserId().equals(sessionMap.get("userId"))){
					errorMessage=user.getFriList().get(i).getStatus();
				}
			}
		}
		System.err.println("erro"+errorMessage);
		return SUCCESS;
	}
	
	//add friend
		public String addFriend(){
			mainUserId = (String) sessionMap.get("userId");
			
			UserBO userBO = new UserBO();
			
			if(errorMessage.isEmpty()){
				userBO.removeFriend(mainUserId,userId);
				userBO.removeFriend(userId,mainUserId);
//				userBO.doAddFriend(mainUserId,userId,"request");		// nguoi gui
//				userBO.doAddFriend(userId,mainUserId,"pending"); 		//nguoi nhan
					
			} else if(errorMessage.equals("pending")){
				userBO.doAddFriend(mainUserId,userId,"request");		// nguoi gui
				userBO.doAddFriend(userId,mainUserId,"pending"); 		//nguoi nhan
				user = userBO.getInforUser(mainUserId);
				userBO.addToNotification(userId,mainUserId,user.getName());
					
			} else if (errorMessage.equals("friend")) {
				System.out.println("o day chu"+mainUserId+userId);
				userBO.removeFriend(mainUserId, userId);
				userBO.removeFriend(userId, mainUserId);
				userBO.doAcceptFriend(mainUserId,userId,"friend");
				userBO.doAcceptFriend(userId,mainUserId,"friend");
				System.out.println("o day chu");
			} 
			
			userId = getUserId();
			
			//add friend to collection member and notification
			
			
			return SUCCESS;
		}
		public String test(){
				System.out.println(birthDate);
			return SUCCESS;
		}
	//edit user profile
		public String editInfoUser(){
			System.out.println(description);
			System.out.println(name);
			System.out.println(gender);
			System.out.println(address);
			System.out.println(country);
			System.out.println(city);
			System.out.println(phone);
			System.out.println(musicGenre);
			System.out.println(email);
			System.out.println("123"+birthDate);
			
			
			UserBO userBO = new UserBO();
			
			//get old user infor
			Member user = new Member();
			user = userBO.getInforUser(_id);
			
			//get new user infor
			
			Member userNew = new Member();
			userNew.setDescription(description);
			userNew.setName(name);
			userNew.setGender(gender);
			userNew.setAddress(address);
			userNew.setCountry(country);
			userNew.setCity(city);
			userNew.setPhone(phone);
			userNew.setMusicGenre(musicGenre);
			userNew.setBirthDate(birthDate);
			
			
			//save link avatar
			
			System.out.println("name :" +fileUpload);
			if(fileUpload!=null){
				File saveFilePath = new File("C:/quangnbn/EMS/WebContent/assets/images/avatars/" + userId + ".png");
//				File saveFilePath = new File(DEFAULT_URL+"assets/images/avatars/"+ userId + ".png");
				System.out.println(""+saveFilePath);
				try {
					FileUtils.copyFile(fileUpload, saveFilePath);
				} catch (IOException ex) {
					System.out.println("Couldn't save file: " + ex.getMessage());
				}
			}
			
			userNew.setAvatar(userId +".png");
			avatar = userNew.getAvatar();
			
			System.out.println("file: "+ userNew.getAvatar());
			userBO.editInforUser(user, userNew);
			sessionMap.put("avatarSrc", userNew.getAvatar());
			
			return SUCCESS;
		}
	
	// getter and setter
	public String get_id() {
		return _id;
	}

	public Member getUser() {
		return user;
	}

	public void setUser(Member user) {
		this.user = user;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
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

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getPasswd1() {
		return passwd1;
	}

	public void setPasswd1(String passwd1) {
		this.passwd1 = passwd1;
	}

	public String getPasswd2() {
		return passwd2;
	}

	public void setPasswd2(String passwd2) {
		this.passwd2 = passwd2;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public double getPretigePoint() {
		return pretigePoint;
	}

	public void setPretigePoint(double pretigePoint) {
		this.pretigePoint = pretigePoint;
	}

	public String getMusicGenre() {
		return musicGenre;
	}

	public void setMusicGenre(String musicGenre) {
		this.musicGenre = musicGenre;
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

	public List<String> getGenders() {
		return genders;
	}

	public void setGenders(List<String> genders) {
		this.genders = genders;
	}
	public List<String> getCountries() {
		return countries;
	}

	public void setCountries(List<String> countries) {
		this.countries = countries;
	}
	public File getFileUpload() {
		return fileUpload;
	}
	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}
	public String getFileUploadFileName() {
		return fileUploadFileName;
	}
	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}
	public String getFileUploadContentType() {
		return fileUploadContentType;
	}
	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public List<String> getGenres() {
		return genres;
	}
	public void setGenres(List<String> genres) {
		this.genres = genres;
	}
	public List<String> getStates() {
		return states;
	}
	public void setStates(List<String> states) {
		this.states = states;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getPostTime() {
		return postTime;
	}
	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Boolean getFound() {
		return found;
	}
	public void setFound(Boolean found) {
		this.found = found;
	}
	public File getFileUpload1() {
		return fileUpload1;
	}
	public void setFileUpload1(File fileUpload1) {
		this.fileUpload1 = fileUpload1;
	}
	public int getNumberFriend() {
		return numberFriend;
	}
	public void setNumberFriend(int numberFriend) {
		this.numberFriend = numberFriend;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMainUserId() {
		return mainUserId;
	}
	public void setMainUserId(String mainUserId) {
		this.mainUserId = mainUserId;
	}
	public String getCheckUser() {
		return checkUser;
	}
	public void setCheckUser(String checkUser) {
		this.checkUser = checkUser;
	}
	public boolean isEditUser() {
		return editUser;
	}
	public void setEditUser(boolean editUser) {
		this.editUser = editUser;
	}
	public String getFriendId() {
		return friendId;
	}
	public void setFriendId(String friendId) {
		this.friendId = friendId;
	}
	public List<Friend> getAllFriend() {
		return allFriend;
	}
	public void setAllFriend(List<Friend> allFriend) {
		this.allFriend = allFriend;
	}

	public String getDEFAULT_URL() {
		return DEFAULT_URL;
	}

	public void setDEFAULT_URL(String dEFAULT_URL) {
		DEFAULT_URL = dEFAULT_URL;
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}
	
	
}

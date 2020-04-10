package com.fudn.em.action;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.apache.commons.lang.RandomStringUtils;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.common.EmailUtility;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.GenreAggregation;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.PostAndUser;
import com.fudn.em.model.bean.Report;
import com.fudn.em.model.bean.Statistics;
import com.fudn.em.model.bo.AdminBO;
import com.fudn.em.model.bo.AdminWorkingBO;
import com.fudn.em.model.bo.UserBO;

public class AdminWorkingAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Statistics statistics;
	private Post post;
	private List<GenreAggregation> genreAggregationList;
	private List<PostAndUser> postAndUseList;
	private List<Report> reportList;
	private List<Report> reportListHandled;
	private List<Post> activePostList;
	private List<Post> blockPostList;
	private Playlist playlist;
	private String reportID;
	private String host;
	private String port;
	private String userName;
	private String password;
	private String postId;
	
	public String getPostId() {
		return postId;
	}
	
	public void setPostId(String postId) {
		this.postId = postId;
	}
	private String checkUser = null;
	private String _id;
	private String name;
	private String userId;
	private String email;
	private String address;
	private String phone;
	private Date birthDate;
	private Date enterDate;
	private String gender;
	
	private List<String> genders;
	private static final String MALE = "Male";
	private static final String FEMALE = "Female";
	private static final String UNKNOWN = "Unknown";
	
	// SMTP properties - fetched from struts.xml
		
	// e-mail fields - fetched from EmailForm.jsp
	private String subject;
	private String message;
	
	// user
	private List<Member> memberList;

	//	 phan cua loi
	public String managerUser(){
		genders = new ArrayList<String>();
		genders.add(MALE);
		genders.add(FEMALE);
		genders.add(UNKNOWN);
		
		AdminBO adminBo = new AdminBO();
		memberList = adminBo.getAllUser();
	return SUCCESS;
	}
	
	public String doManagerUser(){
		UserBO userBO = new UserBO();
		Member user = new Member();
		user = userBO.getInforUser(getUserId());
		
		// change active of member collection
		AdminBO adminBO = new AdminBO();
		if(user.getActive()==1){
			adminBO.lockUser(getUserId()); // lock
			adminBO.lockPost(getUserId());
			subject = "[EMusic] Your account have been locked";
			message = "Dear "+ user.getName()+", <br>"
					+ "You have been blocked temporarily from editing for attempting to harass other users. Once the block has expired, you are welcome to make useful contributions. If you think there are good reasons why you should be unblocked <br><br>"
					+ "Please contact with admin : EMusic@gmail.com <br>"
					+ "Thank you !<br>"
					+ "EMusic: http://EMusic.com";
		} else {
			adminBO.unlockUser(getUserId()); //unlock
			adminBO.unlockPost(getUserId());
			subject = "[EMusic] Your account have been Unlocked";
			message = "Dear "+ user.getName()+", <br>"
					+ "You have been Unlocked ! <br><br>"
					+ "Please contact with admin : EMusic@gmail.com <br>"
					+ "Thank you !<br>"
					+ "EMusic: http://EMusic.com";
		}
		
		try {
			EmailUtility.sendEmail(host, port, userName, password, user.getEmail(),
					subject, message);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return SUCCESS;
	}
	
	
	public String addNewMember(){
		UserBO userBO = new UserBO();
		Member user = new Member();
		System.out.println(getName());
		String temp = RandomStringUtils.randomAlphanumeric(8).toUpperCase();
		user.setName(getName().toLowerCase());
		user.setEmail(getEmail());
		user.setPasswd(CommonsUtils.encryptPassword(temp));
		user.setAddress(getAddress());
		user.setPhone(getPhone());
		user.setBirthDate(getBirthDate());
		user.setEnterDate(new Date());
		user.setMemberRole(3);
		user.setAvatar("icon-user-default.png");
		user.setGender(getGender());
		user.setCountry("");
		user.setCity("");
		user.setMusicGenre("");
		user.setActive(1);
		
		userBO.insertUser(user);
		
		subject = "[EMusic] Verify Your Email Address with EMusic";
		message = "Dear "+ user.getName()+", <br>"
				+ "You recently joined one of the EMusic with the email address: " +user.getEmail()+"<br>"
				+ "You password is: " +temp+"<br>"
				+ "Thank you !<br>"
				+ "EMusic: http://EMusic.com";
				
		try {
			EmailUtility.sendEmail(host, port, userName, password, user.getEmail(),
					subject, message);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	
	public String managerAdmin(){
		genders = new ArrayList<String>();
		genders.add(MALE);
		genders.add(FEMALE);
		genders.add(UNKNOWN);
		
		AdminBO adminBo = new AdminBO();
		memberList = adminBo.getAllAdmin();
	return SUCCESS;
	}
	
	public String doManagerAdmin(){
		UserBO userBO = new UserBO();
		Member user = new Member();
		user = userBO.getInforUser(getUserId());
		
		// change active of member collection
		AdminBO adminBO = new AdminBO();
		if(user.getActive()==1){
			adminBO.lockUser(getUserId()); // lock
			
			subject = "[EMusic] Your account have been locked";
			message = "Dear "+ user.getName()+", <br>"
					+ "You have been blocked temporarily from editing for attempting to harass other users. Once the block has expired, you are welcome to make useful contributions. If you think there are good reasons why you should be unblocked <br><br>"
					+ "Please contact with admin : EMusic@gmail.com <br>"
					+ "Thank you !<br>"
					+ "EMusic: http://EMusic.com";
		} else {
			adminBO.unlockAdmin(getUserId()); //unlock
			subject = "[EMusic] Your account have been Unlocked";
			message = "Dear "+ user.getName()+", <br>"
					+ "You have been Unlocked ! <br><br>"
					+ "Please contact with admin : EMusic@gmail.com <br>"
					+ "Thank you !<br>"
					+ "EMusic: http://EMusic.com";
		}
		
		try {
			EmailUtility.sendEmail(host, port, userName, password, user.getEmail(),
					subject, message);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
		return SUCCESS;
	}
	
	public String addNewAdmin(){
		UserBO userBO = new UserBO();
		Member user = new Member();
		System.out.println(getName());
		String temp = RandomStringUtils.randomAlphanumeric(8).toUpperCase();
		user.setName(getName().toLowerCase());
		user.setEmail(getEmail());
		user.setPasswd(CommonsUtils.encryptPassword(temp));
		user.setAddress(getAddress());
		user.setPhone(getPhone());
		user.setBirthDate(getBirthDate());
		user.setEnterDate(new Date());
		user.setMemberRole(2);
		user.setAvatar("icon-user-default.png");
		user.setGender(getGender());
		user.setCountry("");
		user.setCity("");
		user.setMusicGenre("");
		user.setActive(1);
		
		userBO.insertUser(user);
		
		subject = "[EMusic] Verify Your Email Address with EMusic";
		message = "Dear "+ user.getName()+", <br>"
				+ "You recently joined one of the EMusic with the email address: " +user.getEmail()+"<br>"
				+ "You password is: " +temp+"<br>"
				+ "Thank you !<br>"
				+ "EMusic: http://EMusic.com";
				
		try {
			EmailUtility.sendEmail(host, port, userName, password, user.getEmail(),
					subject, message);
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return SUCCESS;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Statistics getStatistics() {
		return statistics;
	}

	public void setStatistics(Statistics statistics) {
		this.statistics = statistics;
	}

	public List<GenreAggregation> getGenreAggregationList() {
		return genreAggregationList;
	}

	public void setGenreAggregationList(List<GenreAggregation> genreAggregationList) {
		this.genreAggregationList = genreAggregationList;
	}

	public List<PostAndUser> getPostAndUseList() {
		return postAndUseList;
	}

	public void setPostAndUseList(List<PostAndUser> postAndUseList) {
		this.postAndUseList = postAndUseList;
	}
	
	public List<Report> getReportList() {
		return reportList;
	}

	public void setReportList(List<Report> reportList) {
		this.reportList = reportList;
	}

	public String getReportID() {
		return reportID;
	}

	public void setReportID(String reportID) {
		this.reportID = reportID;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public List<Report> getReportListHandled() {
		return reportListHandled;
	}

	public void setReportListHandled(List<Report> reportListHandled) {
		this.reportListHandled = reportListHandled;
	}

	public Playlist getPlayList() {
		return playlist;
	}

	public void setPlayList(Playlist playlist) {
		this.playlist = playlist;
	}
	
	public List<Post> getActivePostList() {
		return activePostList;
	}

	public void setActivePostList(List<Post> activePostList) {
		this.activePostList = activePostList;
	}

	public List<Post> getBlockPostList() {
		return blockPostList;
	}

	public void setBlockPostList(List<Post> blockPostList) {
		this.blockPostList = blockPostList;
	}

	public String statistics(){
		return SUCCESS;
	}
	
	public String loadStatisticsData(){
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			postAndUseList = new ArrayList<PostAndUser>();
			setGenreAggregationList(adminWorkingBO.getMusicGenreStatistics());
			setPostAndUseList(adminWorkingBO.getListPostAndUser());
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String viewReportList(){
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			setReportList(adminWorkingBO.getListReport());
			setReportListHandled(adminWorkingBO.getListReportHandled());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String acceptReport(){
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			adminWorkingBO.acceptReport(getReportID(), "53a8e1867c07e424539a9e72", host, port, userName, password);
			setReportList(adminWorkingBO.getListReport());
			setReportListHandled(adminWorkingBO.getListReportHandled());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return INPUT;
	}
	
	public String recoverReport(){
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			adminWorkingBO.recoverReport(getReportID(), host, port, userName, password);
			setReportList(adminWorkingBO.getListReport());
			setReportListHandled(adminWorkingBO.getListReportHandled());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return INPUT;
	}
	
	public String viewReportDetail(){
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			setPost(adminWorkingBO.getReportDetail(getReportID()));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public String getPostList() {
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		
		try {
			setActivePostList(adminWorkingBO.getPostList());
			setBlockPostList(adminWorkingBO.getBlockedPostList());
		}catch(Exception e) {
			
		}
		
		return SUCCESS;
	}


	public List<Member> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<Member> memberList) {
		this.memberList = memberList;
	}

	public String getCheckUser() {
		return checkUser;
	}

	public void setCheckUser(String checkUser) {
		this.checkUser = checkUser;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public Date getEnterDate() {
		return enterDate;
	}

	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<String> getGenders() {
		return genders;
	}

	public void setGenders(List<String> genders) {
		this.genders = genders;
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
	
	public String blockPost() {
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			adminWorkingBO.blockPost(getPostId(), host, port, userName, password);
			setBlockPostList(adminWorkingBO.getBlockedPostList());
			setActivePostList(adminWorkingBO.getPostList());
		}catch(Exception e) {
			
		}
		return SUCCESS;
	}
	
	public String unblockPost() {
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			adminWorkingBO.unblockPost(getPostId(), host, port, userName, password);
			setBlockPostList(adminWorkingBO.getBlockedPostList());
			setActivePostList(adminWorkingBO.getPostList());
		}catch(Exception e) {
			
		}
		return SUCCESS;
	}
}


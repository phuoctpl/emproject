package com.fudn.em.model.bo;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fudn.em.model.bean.Friend;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Notification;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.User;
import com.fudn.em.model.dao.UserDAO;

public class UserBO {
	
	public Member getUserProfile(String username) {
		UserDAO userDAO = null;
		try {
			userDAO = new UserDAO();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Member user = new Member();
		user = userDAO.getUserProfile(username);
		return user;
	}

	//register
	public void insertUser(Member user) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.insertUser(user);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	//get user by email
	
	public Member getInforUserByEmail(String email) {
		Member user = new Member();
		try {
			UserDAO userDAO = new UserDAO();
			user = userDAO.getInforUserByEmail(email);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}
	
	//get user by id
	public Member getInforUser(String _id) {
		Member user = new Member();
		try {
			UserDAO userDAO = new UserDAO();
			user = userDAO.getInforUser(_id);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return user;
	}

	public void updateInforUser(Member user, Member userNew) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.updateInforUser(user,userNew);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public void updateConfirmEmail(Member oldUser, Member user) {
		
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.updateConfirmEmail(oldUser,user);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void resetPassword(Member user) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.resetPassword(user);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void changePassowrd(Member user) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.changePassowrd(user);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void editInforUser(Member user, Member userNew) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.editInforUser(user,userNew);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public int getNumberFriend(List<Friend> friList) {
		int count = 0;
		for (int i = 0; i < friList.size(); i++) {
			if(friList.get(i).getStatus().equals("friend")){
				count = count + 1;
			}
		}
		return count;
	}
	
	public List<Friend> getAllFriend(List<Friend> friList) {
		Friend friend;
		Member userMember;
		List<Friend> friends = new ArrayList<Friend>();
		for (int i = 0; i < friList.size(); i++) {
			if(friList.get(i).getStatus().equals("friend")){
				userMember = new Member();
				userMember = getInforUser(friList.get(i).getUserId());
				friend = new Friend();
				friend.setUserId(friList.get(i).getUserId());
				friend.setStatus(friList.get(i).getStatus());
				friend.setFriAvatar(userMember.getAvatar());
				friend.setFriName(userMember.getName());
				friend.setFriDescription(userMember.getDescription());
				friend.setFriGender(userMember.getGender());
				friend.setFriGenre(userMember.getMusicGenre());
				friends.add(friend);
			}
		}
		return friends;
	}


	public void doAddFriend(String mainUserId, String userId, String state) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.doAddFriend(mainUserId,userId,state);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

	public void doAcceptFriend(String mainUserId, String userId, String state) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.doAcceptFriend(mainUserId,userId,state);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void removeFriend(String mainUserId, String userId) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.removeFriend(mainUserId,userId);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public void addToNotification(String userId, String mainUserId, String name) {
		try {
			UserDAO userDAO = new UserDAO();
			Notification notification = new Notification();
			notification.setUserCreateId(mainUserId);
			notification.setUserCreateName(name);
			notification.setUserInvolvedId(userId);
			notification.setSortContent(name+" sent you a friend request");
			notification.setLinkInvolve("/EM_Framework/pages/user/channel.action?userId="+mainUserId);
//			notification.setCreateTime(new Date());
			notification.setType(Byte.parseByte("1")); // chua doc
			notification.setStatus(Byte.parseByte("0")); // add friend
			userDAO.addToNotification(notification);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	

	



	
	
		


}

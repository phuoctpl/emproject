package com.fudn.em.model.bo;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.GenreAggregation;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.PostAndUser;
import com.fudn.em.model.dao.AdminDAO;
import com.mongodb.DBObject;

public class AdminBO {

	public List<Member> getAllUser() {
		AdminDAO adminDAO = new AdminDAO();
		Member user = new Member();
		List<Member> memberList = new ArrayList<Member>();
		memberList = adminDAO.getAllUser();
//		memberList.add(user);
		return memberList;
	}
	
	public void lockUser(String userId) {
		AdminDAO adminDAO = new AdminDAO();
		adminDAO.lockUser(userId);
	}
	public void unlockUser(String userId) {
		AdminDAO adminDAO = new AdminDAO();
		adminDAO.unlockUser(userId);
		
	}
	public void lockPost(String userId) {
		AdminDAO adminDAO = new AdminDAO();
		adminDAO.lockPost(userId);
		
	}
	public void unlockPost(String userId) {
		AdminDAO adminDAO = new AdminDAO();
		adminDAO.unlockPost(userId);
		
	}
	public List<Member> getAllAdmin() {
		AdminDAO adminDAO = new AdminDAO();
		Member user = new Member();
		List<Member> memberList = new ArrayList<Member>();
		memberList = adminDAO.getAllAdmin();
		return memberList;
	}

	public void unlockAdmin(String userId) {
		AdminDAO adminDAO = new AdminDAO();
		adminDAO.unlockAdmin(userId);
		
	}

	

}

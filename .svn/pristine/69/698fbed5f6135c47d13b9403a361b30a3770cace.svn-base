package com.fudn.em.model.bo;

import java.net.UnknownHostException;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.dao.AuthenticationDAO;

public class AuthenticationBO {
	
	private AuthenticationDAO dao;

	public boolean isMember(String email, String passwd) throws UnknownHostException, DAOException {
		Member member = null;
			dao = new AuthenticationDAO();

			if (dao.checkMember(email)) {
				member = dao.getMember(email);
				if (CommonsUtils.authenticatePassword(passwd, member.getPasswd())) {
					return true;
				}
			}
		return false;
	}
	
	public boolean checkMember(String email) throws UnknownHostException, DAOException {
			dao = new AuthenticationDAO();
		return dao.checkMember(email);
	}
	
	public Member getMember(String username) throws DAOException, UnknownHostException {
		dao = new AuthenticationDAO();
		return dao.getMember(username);
	}
	
	public boolean checkFbId(String fbId) throws UnknownHostException, DAOException {
			dao = new AuthenticationDAO();
		return dao.checkFbId(fbId);
	}
	
	public static void main(String[] args){
		AuthenticationBO bo = new AuthenticationBO();
		try {
			System.out.println(bo.isMember("nguyenntse90074@gmail.com", "12345"));
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

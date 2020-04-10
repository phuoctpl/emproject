package com.fudn.em.model.bo;

import java.util.List;

import com.fudn.em.message.UserMessage;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.dao.MemberDAO;

public class MemberBO {
	private MemberDAO memberDAO;
	public Member getMember(String memberId) {
		memberDAO = new MemberDAO();
		return memberDAO.findDocumentById(memberId);
	}
	public List<UserMessage> getAllFriendList(String userId){
		memberDAO = new MemberDAO();
		return memberDAO.getAllFriendList(userId);
	}
	
	public void insert(Member member) {
		memberDAO = new MemberDAO();
		memberDAO.insert(member);
	}
}

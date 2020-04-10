package com.fudn.em.model.bo;

import java.util.List;

import com.fudn.em.common.Constant;
import com.fudn.em.model.bean.Contest;
import com.fudn.em.model.dao.ContestDAO;
import com.fudn.em.model.dao.MemberDAO;

public class ContestBO {
	
	private ContestDAO contestDAO;
	private MemberDAO memberDAO;
	
	public void addPrestigePoint(String userId, int action) {
		int point = 0;
		switch (action) {
		case Constant.ACTION_RATING:
			point = Constant.ACTION_RATING; 
			break;
		case Constant.ACTION_COMMENT:
			point = Constant.ACTION_COMMENT;
			break;			
		case Constant.ACTION_POST:
			point = Constant.ACTION_POST;
			break;
		case Constant.ACTION_TAG_FRIEND:
			point = Constant.ACTION_TAG_FRIEND;
			break;			
		case Constant.ACTION_CONTEST_PRIZE:
			point = Constant.ACTION_CONTEST_PRIZE;
			break;
		case Constant.ACTION_CREATE_CONTEST:
			point = Constant.ACTION_CREATE_CONTEST;
			break;							
		case Constant.ACTION_JOIN_CONTEST:
			point = Constant.ACTION_JOIN_CONTEST;
			break;									
		}
		
		ContestBO contestBO = new ContestBO();
		contestBO.updatePrestigePoint(userId, point);
	}
	
	public void addUserToContest(String userId, String contestId) {
		contestDAO = new ContestDAO();
		Contest contest = contestDAO.findDocumentById(contestId);
		List<String> newUser = contest.getUser();
		newUser.add(userId);
		contestDAO.updateUserToContest(contestId, newUser);
	}
	
	public Contest getContest(String contestId) {
		contestDAO = new ContestDAO();
		return contestDAO.findDocumentById(contestId);
	}
	
	public void createContest(Contest contest) {
		contestDAO = new ContestDAO();
		contestDAO.insert(contest);
	}
	
	public void updatePrestigePoint(String userId, int point){
		memberDAO = new MemberDAO();
		memberDAO.updatePrestigePoint(userId, point);
	}
	
	public void updateWinner(String contestId, String user) {
		contestDAO = new ContestDAO();
		contestDAO.updateWinner(contestId, user);
	}
	
	public void deleteContest(String contestId) {
		contestDAO = new ContestDAO();
		contestDAO.deleteContest(contestId);
	}
}

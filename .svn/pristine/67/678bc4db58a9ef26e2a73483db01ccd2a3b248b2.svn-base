package com.fudn.em.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.common.Constant;
import com.fudn.em.model.bean.Contest;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Participants;
import com.fudn.em.model.bo.ContestBO;
import com.fudn.em.model.bo.MemberBO;
import com.fudn.em.model.dao.ContestDAO;
import com.fudn.em.model.dao.MemberDAO;

@SuppressWarnings("serial")
public class ContestAction extends BaseAction {
	
	private List<Contest> listContest;
	private String _id;
	private String contestId;
	private String contestName;
	private String name;
	private String userCreated;
	private String userIdCreated;
	private List<String> user;
	private String description;
	private String content;
	private String startDate;
	private String winner;
	private int active;
	private String prize;
	private String avatar;
	private List<Participants> participants;
	private String selectedUser;
	
	public String viewAllContest() {
		if(isLogin()) {
			ContestDAO contestDAO = new ContestDAO();
			List<Contest> listContest = contestDAO.getListContest();
			setListContest(listContest);
			return SUCCESS;
		} else {
			return LOGIN;
		}
	}
	
	public String joinContest() {
		if(isLogin()) {
			httpServletRequest = ServletActionContext.getRequest();
			return Constant.HTTPSERVLET_METHOD_POST.equalsIgnoreCase(httpServletRequest.getMethod()) ? 
				   postJoinContest() : getJoinContest();		
		} else {
			return LOGIN;
		}
	}
	
	public String postJoinContest() {
		String contestId = get_id();
		String userId = (String) sessionMap.get("userId");
		ContestBO contestBO = new ContestBO();
		contestBO.addPrestigePoint(userId, Constant.ACTION_JOIN_CONTEST);
		contestBO.addUserToContest(userId, contestId);
		return SUCCESS;
	}
	
	public String getJoinContest() {
		return INPUT;
	}
	
	public String createContest() {
		if(isLogin()) {
			httpServletRequest = ServletActionContext.getRequest();
			return Constant.HTTPSERVLET_METHOD_POST.equalsIgnoreCase(httpServletRequest.getMethod()) ? 
				   postCreateContest() : getCreateContest();		
		} else {
			return LOGIN;
		}
	}
	
	public String getCreateContest() {
		return INPUT;
	}
	
	public String postCreateContest() {
		String userId = (String)sessionMap.get("userId");
		MemberDAO memberDAO = new MemberDAO();
		Member member = memberDAO.findDocumentById(userId);
		if(member.getPrestigePoint() >= Constant.CAPABILITIES_CREATE_CONTEST) {
			ContestBO contestBO = new ContestBO();
			contestBO.addPrestigePoint(userId, Constant.ACTION_CREATE_CONTEST);
			String name = getName();
			String description = getDescription();
			String content = getContent();
			String startDateStr = getStartDate();
			Date startDate = CommonsUtils.parseDate(startDateStr);
			String prizeStr = getPrize();
			double prize = Double.parseDouble(prizeStr);
			String avatar = getAvatar();
			List<String> user = new ArrayList<String>();
			int active = 0;
			
			Contest contest = new Contest();
			contest.setName(name);
			contest.setDescription(description);
			contest.setContent(content);
			contest.setStartDate(startDate);
			contest.setUserCreated(userId);
			contest.setUser(user);
			contest.setPrize(prize);
			contest.setAvatar(avatar);
			contest.setActive(active);
			
			contestBO.createContest(contest);
		} else {
			setMessages("Your prestige point is " + member.getPrestigePoint() + ", it must be greater than 200 to create this contest");
			return INPUT;
		}
		return SUCCESS;
	}
	
	public String viewContest() {
		if(isLogin()) {
			MemberBO memberBO = new MemberBO();
			
			String contestId = getContestId();
			ContestBO contestBO = new ContestBO();
			Contest contest = contestBO.getContest(contestId);
			
			setName(contest.getName());
			String userCreated = memberBO.getMember(contest.getUserCreated()).getName();
			setUserCreated(userCreated);
			setUserIdCreated(contest.getUserCreated());
			setDescription(contest.getDescription());
			setContent(contest.getContent());
			setContestId(contestId);
			setStartDate(CommonsUtils.dateFormat(contest.getStartDate()));
			
			List<String> user = contest.getUser();
			List<String> userConverted = new ArrayList<String>();
			for (String userStr : user) {
				userConverted.add(memberBO.getMember(userStr).getName());
			}
			
			setUser(userConverted);
			setPrize(String.valueOf(contest.getPrize()));
			if(contest.getWinner() == null) {
				setWinner(null);
			} else {
				setWinner(memberBO.getMember(contest.getWinner()).getName());
			}
			setAvatar(contest.getAvatar());
			setActive(contest.getActive());
			return SUCCESS;
		} else {
			return LOGIN;
		}
	}
	
	public String selectWinner() {
		if(isLogin()) {
			httpServletRequest = ServletActionContext.getRequest();
			return Constant.HTTPSERVLET_METHOD_POST.equalsIgnoreCase(httpServletRequest.getMethod()) ? postSelectWinner() : getSelectWinner();		
		} else {
			return LOGIN;
		}
	}
	
	public String postSelectWinner() {
		String selectedUser = getSelectedUser();
		MemberBO memberBO2 = new MemberBO();
		ContestBO contestBO = new ContestBO();
		String contestId = getContestId();
		contestBO.updateWinner( contestId, selectedUser);
		String name = memberBO2.getMember(selectedUser).getName();
		setName(name);
		return INPUT;
	}
	
	public void commonSelectWinner() {
		String contestId = getContestId();
		ContestBO contestBO = new ContestBO();
		MemberBO memberBO = new MemberBO();
		Contest contest = contestBO.getContest(contestId);
		List<String> user = contest.getUser();
		List<Participants> participants = new ArrayList<Participants>();
		
		Participants participant = null;
		
		for (String userStr : user) {
			participant = new Participants();
			participant.setUserId(userStr);
			participant.setUserName(memberBO.getMember(userStr).getName());
			participants.add(participant);
		}
		
		setParticipants(participants);
		setContestName(contest.getName());
		setContestId(contestId);
	}
	
	public String getSelectWinner() {
		commonSelectWinner();
		return INPUT;	
	}
	
	public String deleteContest() {
		if(isLogin()){
			httpServletRequest = ServletActionContext.getRequest();
			if (Constant.HTTPSERVLET_METHOD_POST.equals(httpServletRequest.getMethod())) {
				ContestBO contestBO = new ContestBO();
				String contestId = getContestId();
				contestBO.deleteContest(contestId);
			}
		} else {
			return LOGIN;
		}
		return SUCCESS;
	}
	
	public String updateContest() {
		if(isLogin()) {
			httpServletRequest = ServletActionContext.getRequest();
			return Constant.HTTPSERVLET_METHOD_POST.equalsIgnoreCase(httpServletRequest.getMethod()) ? postUpdateContest() : getUpdateContest();		
		} else {
			return LOGIN;
		}
	}
	
	public String getUpdateContest() {
		String contestId = getContestId();
		ContestBO contestBO = new ContestBO();
		Contest contest = contestBO.getContest(contestId);
		setName(contest.getName());
		setUserCreated(contest.getUserCreated());
		setDescription(contest.getDescription());
		setContent(contest.getContent());
		setStartDate(CommonsUtils.dateFormat(contest.getStartDate()));
		setPrize(String.valueOf(contest.getPrize()));
		setAvatar(contest.getAvatar());
		return INPUT;
	}
	
	public String postUpdateContest() {
		
		return SUCCESS;
	}
	
	public List<Contest> getListContest() {
		return listContest;
	}

	public void setListContest(List<Contest> listContest) {
		this.listContest = listContest;
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

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getPrize() {
		return prize;
	}

	public void setPrize(String prize) {
		this.prize = prize;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getContestId() {
		return contestId;
	}

	public void setContestId(String contestId) {
		this.contestId = contestId;
	}

	public String getUserCreated() {
		return userCreated;
	}

	public void setUserCreated(String userCreated) {
		this.userCreated = userCreated;
	}

	public List<String> getUser() {
		return user;
	}

	public void setUser(List<String> user) {
		this.user = user;
	}

	public String getWinner() {
		return winner;
	}

	public void setWinner(String winner) {
		this.winner = winner;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public String getUserIdCreated() {
		return userIdCreated;
	}

	public void setUserIdCreated(String userIdCreated) {
		this.userIdCreated = userIdCreated;
	}

	public String getContestName() {
		return contestName;
	}

	public void setContestName(String contestName) {
		this.contestName = contestName;
	}

	public List<Participants> getParticipants() {
		return participants;
	}

	public void setParticipants(List<Participants> participants) {
		this.participants = participants;
	}

	public String getSelectedUser() {
		return selectedUser;
	}

	public void setSelectedUser(String selectedUser) {
		this.selectedUser = selectedUser;
	}
}

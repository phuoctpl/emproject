package com.fudn.em.action;

import java.text.ParseException;
import java.util.List;

import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.PostAndUser;
import com.fudn.em.model.bean.Statistics;
import com.fudn.em.model.bo.AdminWorkingBO;

public class ReadStatiticAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Statistics statistics;
	
	private List<PostAndUser> postAndUseList;

	public Statistics getStatistics() {
		return statistics;
	}

	public void setStatistics(Statistics statistics) {
		this.statistics = statistics;
	}
	
	public String statistics(){
		AdminWorkingBO adminWorkingBO = new AdminWorkingBO();
		try {
			setPostAndUseList(adminWorkingBO.getListPostAndUser());
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	public List<PostAndUser> getPostAndUseList() {
		return postAndUseList;
	}

	public void setPostAndUseList(List<PostAndUser> postAndUseList) {
		this.postAndUseList = postAndUseList;
	}
	
}

package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.TopUser;
import com.fudn.em.model.bo.PostListBO;

public class GetTopUserAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<TopUser> topUsserList;
	private int index;

	public List<TopUser> getTopUsserList() {
		return topUsserList;
	}

	public void setTopUserList(List<TopUser> topUsserList) {
		this.topUsserList = topUsserList;
	}
	
	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getUserList() {
		PostListBO postListBO = new PostListBO();
		
		try {
			setTopUserList(postListBO.getUserList(index));
		} catch (Exception e) {
			return INPUT;
		}
		return SUCCESS;
	}

}

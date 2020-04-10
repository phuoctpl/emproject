package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bo.PostListBO;

public class GetPopularVideoAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Post> popularVideoPostList;
	private int index;
	
	public List<Post> getPopularVideoPostList() {
		return popularVideoPostList;
	}
	
	public void setPopularVideoPostList(List<Post> popularVideoPostList) {
		this.popularVideoPostList = popularVideoPostList;
	}
	
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getPopularVideo(){
		
		PostListBO postListBO = new PostListBO();
		
		try {
			setPopularVideoPostList(postListBO.getPopularVideo(index));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}

}

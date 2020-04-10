package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bo.PostListBO;

public class GetNewPostAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Post> newPostList;
	private int index;
	
	public List<Post> getNewPostList() {
		return newPostList;
	}
	
	public void setNewPostList(List<Post> newPostList) {
		this.newPostList = newPostList;
	}
	
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getNewPost(){
		
		PostListBO postListBO = new PostListBO();
		
		try {
			setNewPostList(postListBO.getNewPost(index));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	
}

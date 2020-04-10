package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bo.PostListBO;

public class GetPopularAudioAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Post> popularAudioPostList;
	private int index;
	
	public List<Post> getPopularAudioPostList() {
		return popularAudioPostList;
	}
	
	public void setPopularAudioPostList(List<Post> popularAudioPostList) {
		this.popularAudioPostList = popularAudioPostList;
	}
	
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getPopularAudio(){
		
		PostListBO postListBO = new PostListBO();
		
		try {
			setPopularAudioPostList(postListBO.getPopularAudio(index));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}

}

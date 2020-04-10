package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bo.PostListBO;

public class GetPopularVideoAlbumAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<Playlist> popularVideoAlbumList;
	private int index;
	
	public List<Playlist> getPopularVideoAlbumList() {
		return popularVideoAlbumList;
	}
	
	public void setPopularVideoAlbumList(List<Playlist> popularVideoAlbumList) {
		this.popularVideoAlbumList = popularVideoAlbumList;
	}
	
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getPopularVideoAlbum(){
		
		PostListBO postListBO = new PostListBO();
		
		try {
			setPopularVideoAlbumList(postListBO.getPopularVideoAlbum(index));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}

}

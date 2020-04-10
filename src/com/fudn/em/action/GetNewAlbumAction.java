package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bo.PostListBO;

public class GetNewAlbumAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Playlist> newAlbumList;
	private int index;

	public List<Playlist> getNewAlbumList() {
		return newAlbumList;
	}

	public void setNewAlbumList(List<Playlist> newAlbumList) {
		this.newAlbumList = newAlbumList;
	}
	
	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getNewAlbum(){
		
		PostListBO postListBO = new PostListBO();
		
		try {
			setNewAlbumList(postListBO.getNewAlbum(index));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
}

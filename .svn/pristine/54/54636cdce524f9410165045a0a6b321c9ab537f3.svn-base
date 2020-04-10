package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bo.PostListBO;

public class GetPopularAudioAlbumAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<Playlist> popularAudioAlbumList;
	private int index;
	
	public List<Playlist> getPopularAudioAlbumList() {
		return popularAudioAlbumList;
	}
	
	public void setPopularAudioAlbumList(List<Playlist> popularAudioAlbumList) {
		this.popularAudioAlbumList = popularAudioAlbumList;
	}
	
	public int getIndex() {
		return index;
	}
	
	public void setIndex(int index) {
		this.index = index;
	}
	
	public String getPopularAudioAlbum(){
		
		PostListBO postListBO = new PostListBO();
		
		try {
			setPopularAudioAlbumList(postListBO.getPopularAudioAlbum(index));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
}

package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.TopUser;
import com.fudn.em.model.bo.PostListBO;

public class PostListAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<Post> popularVideoPostList;
	private List<Post> popularAudioPostList;
	private List<Post> newPostList;
	private List<Playlist> popularAudioAlbumList;
	private List<Playlist> popularVideoAlbumList;
	private List<Playlist> newAlbumList;
	private List<TopUser> topUserList;
	private int index = 1;

	public List<Post> getNewPostList() {
		return newPostList;
	}

	public void setNewPostList(List<Post> newPostList) {
		this.newPostList = newPostList;
	}

	public List<Playlist> getPopularVideoAlbumList() {
		return popularVideoAlbumList;
	}

	public void setPopularVideoAlbumList(List<Playlist> popularVideoAlbumList) {
		this.popularVideoAlbumList = popularVideoAlbumList;
	}

	public List<Playlist> getNewAlbumList() {
		return newAlbumList;
	}

	public void setNewAlbumList(List<Playlist> newAlbumList) {
		this.newAlbumList = newAlbumList;
	}

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

	public List<Post> getPopularAudioPostList() {
		return popularAudioPostList;
	}

	public void setPopularAudioPostList(List<Post> popularAudioPostList) {
		this.popularAudioPostList = popularAudioPostList;
	}

	public List<Playlist> getPopularAudioAlbumList() {
		return popularAudioAlbumList;
	}

	public void setPopularAudioAlbumList(List<Playlist> popularAudioAlbumList) {
		this.popularAudioAlbumList = popularAudioAlbumList;
	}

	public List<TopUser> getTopUserList() {
		return topUserList;
	}

	public void setTopUserList(List<TopUser> topUserList) {
		this.topUserList = topUserList;
	}
	
	public String getMainPage(){
		
		PostListBO postListBO = new PostListBO();
		try {
			setNewPostList(postListBO.getNewPost(1));
			setPopularAudioAlbumList(postListBO.getPopularAudioAlbum(1));
			setPopularVideoAlbumList(postListBO.getPopularVideoAlbum(1));
			setNewAlbumList(postListBO.getNewAlbum(1));
			setTopUserList(postListBO.getUserList(1));
			setPopularVideoPostList(postListBO.getPopularVideo(1));
			setPopularAudioPostList(postListBO.getPopularAudio(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

}

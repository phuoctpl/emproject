package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bo.PlaylistBO;

public class PlaylistAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Playlist playlist;
	private List<Playlist> memberAlbumList;
	private List<Playlist> similarAlbumList;
	private List<Playlist> sameUserAlbum;
	private String newRating;
	private String oldRating;
	private String numberOfRating;
	private String postId;
	private String playlistId;
	private String message;
	
	public Playlist getPlaylist() {
		return playlist;
	}
	
	public void setPlaylist(Playlist playlist) {
		this.playlist = playlist;
	}
	
	public List<Playlist> getMemberAlbumList() {
		return memberAlbumList;
	}
	
	public void setMemberAlbumList(List<Playlist> memberAlbumList) {
		this.memberAlbumList = memberAlbumList;
	}
	
	public List<Playlist> getSimilarAlbumList() {
		return similarAlbumList;
	}
	
	public void setSimilarAlbumList(List<Playlist> similarAlbumList) {
		this.similarAlbumList = similarAlbumList;
	}
	
	public List<Playlist> getSameUserAlbum() {
		return sameUserAlbum;
	}
	
	public void setSameUserAlbum(List<Playlist> sameUserAlbum) {
		this.sameUserAlbum = sameUserAlbum;
	}

	public String getNewRating() {
		return newRating;
	}

	public void setNewRating(String newRating) {
		this.newRating = newRating;
	}
	
	public String getPostId() {
		return postId;
	}
	
	public void setPostId(String postId) {
		this.postId = postId;
	}

	public String getPlaylistId() {
		return playlistId;
	}

	public void setPlaylistId(String playlistId) {
		this.playlistId = playlistId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getOldRating() {
		return oldRating;
	}

	public void setOldRating(String oldRating) {
		this.oldRating = oldRating;
	}

	public String getNumberOfRating() {
		return numberOfRating;
	}

	public void setNumberOfRating(String numberOfRating) {
		this.numberOfRating = numberOfRating;
	}
	
	public String getAudioAlbumDetail() {
		PlaylistBO playlistBO = new PlaylistBO();
		
		setPlaylist(playlistBO.findDocumentById(getPlaylistId()));
		setSameUserAlbum(playlistBO.getSameUserAlbum(getPlaylist().getUserId()));
		setSimilarAlbumList(playlistBO.getSimilarAlbum(getPlaylist().getMusicGenre()));
		
		return SUCCESS;
	}
	
	public String getVideoAlbumDetail() {
		PlaylistBO playlistBO = new PlaylistBO();
		
		setPlaylist(playlistBO.findDocumentById(getPlaylistId()));
		setSameUserAlbum(playlistBO.getSameUserAlbum(getPlaylist().getUserId()));
		setSimilarAlbumList(playlistBO.getSimilarAlbum(getPlaylist().getMusicGenre()));
		
		return SUCCESS;
	}
	
	public String addPostToPlaylist() {
		PlaylistBO playlistBO = new PlaylistBO();
		playlistBO.addPostToPlayList(getPostId(), getPlaylistId());
		return SUCCESS;
	}
	
	public String createAlbum() {
		PlaylistBO playlistBO = new PlaylistBO();
		playlistBO.createAlbum(getPlaylist());
		return SUCCESS;
	}
	
	public String ratingPlaylist() {
		PlaylistBO playlistBO = new PlaylistBO();
		
		Playlist pla = new Playlist();
		
		pla.setId(getPlaylistId());
		pla.setRating(Float.parseFloat(getOldRating()));
		pla.setNumberOfRating(Integer.parseInt(getNumberOfRating()));
		
		setMessage(playlistBO.rating(pla, Float.parseFloat(getNewRating())));
		return SUCCESS;
	}
}

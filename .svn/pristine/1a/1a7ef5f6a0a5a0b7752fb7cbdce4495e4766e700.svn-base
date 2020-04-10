package com.fudn.em.model.bo;

import java.util.List;

import com.fudn.em.model.bean.Comment;
import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.dao.PlaylistDAO;

public class PlaylistBO {
	
	PlaylistDAO playlistDAO = new PlaylistDAO();
	
	public Playlist findDocumentById(String _id) {
		return playlistDAO.findDocumentById(_id);
	}
	
	public List<Playlist> getSimilarAlbum (String playlistGenre) {
		return playlistDAO.getSimilarAlbum(playlistGenre);
	}
	
	public List<Playlist> getSameUserAlbum (String memberId) {
		return playlistDAO.getSameUserAlbum(memberId);
	}
	
	public List<Playlist> getMemberAlbum (String memberId) {
		return playlistDAO.getMemberAlbum(memberId);
	}
	
	public void addPostToPlayList(String postId, String playlistId) {
		playlistDAO.addPostToPlayList(postId, playlistId);
	}
	
	public void removePostFromPlayList(String postId, String playlistId) {
		playlistDAO.removePostFromPlayList(postId, playlistId);
	}

	public void createAlbum(Playlist playlist) {
		playlistDAO.createAlbum(playlist);
	}
	
	public void deletePlaylist(String id) {
		playlistDAO.deletePlaylist(id);
	}
	
	public void addCommentToAlbum(String id, Comment comment) {
		playlistDAO.addCommentToAlbum(id, comment);
	}
	
	public String rating(Playlist playList, float rating) {
		long numberOfRating = playList.getNumberOfRating() + 1;
		float calRate = (rating + playList.getRating()*playList.getNumberOfRating())/numberOfRating;
		playList.setRating(calRate);
		playList.setNumberOfRating(numberOfRating);
		try{
			playlistDAO.rating(playList);
			return "Thank for ratting this post!";
		}catch(Exception e){
			return "Error when ratting, please trying later!";
		}
		
	}
}

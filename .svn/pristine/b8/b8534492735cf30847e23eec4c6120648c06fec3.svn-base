package com.fudn.em.model.bo;

import java.util.Date;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.dao.UploadDAO;

public class UploadBO {

	// upload song
		public void uploadSong(Post post) {
			UploadDAO postDAO = new UploadDAO();
			postDAO.uploadSong(post);
		}

		public Post getSongId(Date postTime) {
			UploadDAO postDAO = new UploadDAO();
			Post post = new Post();
			post = postDAO.getSongId(postTime);
			return post;
		}

		public void insertSongInfo(Post oldPost, Post post) {
			UploadDAO postDAO = new UploadDAO();
			postDAO.insertSongInfo(oldPost,post);
			
		}

		public Post getSongIdById(String postId) {
			UploadDAO postDAO = new UploadDAO();
			Post post = new Post();
			post = postDAO.getSongIdById(postId);
			return post;
		}


}

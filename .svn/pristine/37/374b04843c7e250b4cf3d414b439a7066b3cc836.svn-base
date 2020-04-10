package com.fudn.em.model.bo;

import java.net.UnknownHostException;
import java.util.Date;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.dao.PostDAO;
import com.fudn.em.model.dao.UserDAO;

public class PostBO {

	// upload song
		public void uploadSong(Post post) {
			PostDAO postDAO = new PostDAO();
			postDAO.uploadSong(post);
		}

		public Post getSongId(Date postTime) {
			PostDAO postDAO = new PostDAO();
			Post post = new Post();
			post = postDAO.getSongId(postTime);
			return post;
		}

		public void insertSongInfo(Post oldPost, Post post) {
			PostDAO postDAO = new PostDAO();
			postDAO.insertSongInfo(oldPost,post);
			
		}

		public Post getSongIdById(String postId) {
			PostDAO postDAO = new PostDAO();
			Post post = new Post();
			post = postDAO.getSongIdById(postId);
			return post;
		}


}

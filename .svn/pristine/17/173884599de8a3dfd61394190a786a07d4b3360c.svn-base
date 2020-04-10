package com.fudn.em.model.bo;

import java.util.List;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.dao.PostDisplayDAO;

public class PostDisplayBO {
	
	PostDisplayDAO postDisplayDAO = new PostDisplayDAO();
	
	public Post findDocumentById(String _id){
		return postDisplayDAO.findDocumentById(_id);
	}
	
	public List<Post> getSimilarAlbum (String postGenre) {
		return postDisplayDAO.getSimilarAlbum(postGenre);
	}
	
	public List<Post> getSameUserAlbum (String memberId) {
		return postDisplayDAO.getSameUserAlbum(memberId);
	}
	
	public List<Post> getMemberAlbum (String memberId) {
		return postDisplayDAO.getMemberAlbum(memberId);
	}

	public String rating(Post post, float rating) {
		long numberOfRating = post.getNumberOfRating() + 1;
		float calRate = (rating + post.getRating()*post.getNumberOfRating())/numberOfRating;
		post.setRating(calRate);
		post.setNumberOfRating(numberOfRating);
		try{
			postDisplayDAO.rating(post);
			return "Thank for ratting this post!";
		}catch(Exception e){
			return "Error when ratting, please trying later!";
		}
	}
	
	public String report(String id, long numberOfView, long numberOfReport, String description, String userId) {
		try{
			postDisplayDAO.report(id, numberOfView, numberOfReport, description, userId);
			return "Thank for ratting this post!";
		}catch(Exception e){
			return "Error when ratting, please trying later!";
		}
	}
	
}

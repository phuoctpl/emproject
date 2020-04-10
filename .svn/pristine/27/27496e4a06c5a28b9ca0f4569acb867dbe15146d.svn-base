package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bo.PostDisplayBO;

public class PostAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Post post;
	private List<Post> memberPostList;
	private List<Post> similarPostList;
	private List<Post> sameUserPost;
	private float rating;
	private String postId;
	
	public Post getPost() {
		return post;
	}
	
	public void setPost(Post post) {
		this.post = post;
	}
	
	public List<Post> getMemberPostList() {
		return memberPostList;
	}
	
	public void setMemberPostList(List<Post> memberPostList) {
		this.memberPostList = memberPostList;
	}
	
	public List<Post> getSimilarPostList() {
		return similarPostList;
	}
	
	public void setSimilarPostList(List<Post> similarPostList) {
		this.similarPostList = similarPostList;
	}
	
	public List<Post> getSameUserPost() {
		return sameUserPost;
	}
	
	public void setSameUserPost(List<Post> sameUserPost) {
		this.sameUserPost = sameUserPost;
	}
	
	public float getRating() {
		return rating;
	}
	
	public void setRating(float rating) {
		this.rating = rating;
	}
	
	public String getPostId() {
		return postId;
	}
	
	public void setPostId(String postId) {
		this.postId = postId;
	}
	
	public String getAudioPostDetail() {
		PostDisplayBO postDisplayBO = new PostDisplayBO();
		
		setPost(postDisplayBO.findDocumentById(getPostId()));
		setSameUserPost(postDisplayBO.getSameUserAlbum(getPost().getUserID()));
		setSimilarPostList(postDisplayBO.getSimilarAlbum(getPost().getMusicGenre()));
		
		return SUCCESS;
	}
	
	public String getVideoPostDetail() {
		PostDisplayBO postDisplayBO = new PostDisplayBO();
		
		setPost(postDisplayBO.findDocumentById(getPostId()));
		setSameUserPost(postDisplayBO.getSameUserAlbum(getPost().getUserID()));
		setSimilarPostList(postDisplayBO.getSimilarAlbum(getPost().getMusicGenre()));
		
		return SUCCESS;
	}
	
}

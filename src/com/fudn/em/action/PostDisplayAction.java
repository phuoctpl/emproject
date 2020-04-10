package com.fudn.em.action;

import java.util.List;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bo.PostDisplayBO;

public class PostDisplayAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Post post;
	private List<Post> memberPostList;
	private List<Post> similarPostList;
	private List<Post> sameUserPost;
	private String newRating;
	private String oldRating;
	private String numberOfRating;
	private String numberOfView;
	private String numberOfReport;
	private String postId;
	private String message;
	private String description;

	public String getNumberOfView() {
		return numberOfView;
	}

	public void setNumberOfView(String numberOfView) {
		this.numberOfView = numberOfView;
	}

	public String getNumberOfReport() {
		return numberOfReport;
	}

	public void setNumberOfReport(String numberOfReport) {
		this.numberOfReport = numberOfReport;
	}

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

	public String getNewRating() {
		return newRating;
	}

	public void setNewRating(String newRating) {
		this.newRating = newRating;
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

	public String getPostId() {
		return postId;
	}

	public void setPostId(String postId) {
		this.postId = postId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAudioPostDetail() {
		PostDisplayBO postDisplayBO = new PostDisplayBO();

		setPost(postDisplayBO.findDocumentById(getPostId()));
		setSameUserPost(postDisplayBO.getSameUserAlbum(getPost().getUserID()));
		setSimilarPostList(postDisplayBO.getSimilarAlbum(getPost()
				.getMusicGenre()));

		return SUCCESS;
	}

	public String getVideoPostDetail() {
		PostDisplayBO postDisplayBO = new PostDisplayBO();

		setPost(postDisplayBO.findDocumentById(getPostId()));
		setSameUserPost(postDisplayBO.getSameUserAlbum(getPost().getUserID()));
		setSimilarPostList(postDisplayBO.getSimilarAlbum(getPost()
				.getMusicGenre()));

		return SUCCESS;
	}

	public String ratingPost() {
		PostDisplayBO postDisplayBO = new PostDisplayBO();

		Post po = new Post();

		po.setId(getPostId());
		po.setRating(Float.parseFloat(getOldRating()));
		po.setNumberOfRating(Long.parseLong(getNumberOfRating()));

		setMessage(postDisplayBO.rating(po, Float.parseFloat(getNewRating())));
		return SUCCESS;
	}

	public String report() {
		PostDisplayBO postDisplayBO = new PostDisplayBO();

		setMessage(postDisplayBO.report(getPostId(),
				Long.parseLong(getNumberOfView()),
				Long.parseLong(getNumberOfReport()), getDescription(), 
				sessionMap.get("userId").toString()));

		return SUCCESS;
	}

}

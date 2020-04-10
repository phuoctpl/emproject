package com.fudn.em.model.dao;

import java.util.Date;

import org.bson.types.ObjectId;

import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Post;
import com.fudn.em.objParser.IModelConverter;
import com.fudn.em.objParser.PostConverter;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;

public class PostDAO extends BaseDAO<Post>{

	private IModelConverter<Post> postConverter;
	
	public PostDAO(){
		try {
			getDB();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getOjbDBCollection("Post");
		postConverter = new PostConverter();
	}
	
	public void uploadSong(Post post) {
		
		BasicDBObject newPost = postConverter.toDBObject(post);
		getOjbDBCollection("Post").insert(newPost);
		
	}
	
	public Post getSongIdById(String postId) {
		BasicDBObject obj = (BasicDBObject) getOjbDBCollection("Post").find(
				new BasicDBObject("_id", new ObjectId(postId))).next();
		return postConverter.toModel(obj);
	}

	
	public Post getSongId(Date postTime) {
		BasicDBObject obj = (BasicDBObject) getOjbDBCollection("Post").find(
				new BasicDBObject("postTime", postTime)).next();
		return postConverter.toModel(obj);
	}
	
	public void insertSongInfo(Post oldPost, Post post) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("title",post.getTitle())
									.append("description", post.getDescription())
									.append("musicGenre", post.getMusicGenre())
									.append("state", post.getState())
									.append("image", post.getImage()));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("_id",new ObjectId(oldPost.getId()));
		
		getOjbDBCollection("Post").updateMulti(searchQuery3, updateQuery);
		
	}

	
	@Override
	protected void insert(Post object) {
		
	}

	@Override
	protected Post readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void update(Post oldObject, Post newObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void delete(Post object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}
	public IModelConverter<Post> getPostConverter() {
		return postConverter;
	}
	public void setPostConverter(IModelConverter<Post> postConverter) {
		this.postConverter = postConverter;
	}

	@Override
	public Post findDocumentById(String _id) {
		return null;
	}

}

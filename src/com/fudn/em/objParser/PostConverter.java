package com.fudn.em.objParser;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.Comment;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;

public class PostConverter implements IModelConverter<Post>{

	@Override
	public Post toModel(BasicDBObject object) {
		
		return null;
	}

	@Override
	public BasicDBObject toDBObject(Post model) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Post toModel(String id, DBCollection postCollection, DBCollection memberCollection){
		
		Post post = new Post();
		Member member;
		BasicDBObject object;
		
		post = new Post();
		
		object = (BasicDBObject) postCollection.findOne(new BasicDBObject("_id", new ObjectId(id)));
		
		member = memberToModel(object.getString("user"), memberCollection);
		
		post.setId(object.getObjectId("_id").toString());
		post.setTitle(object.getString("title"));
		post.setContent(object.getString("content"));
		post.setImage(object.getString("image"));
		post.setDescription(object.getString("description"));
		post.setState((Integer) (object.get("state")));
		post.setType((Integer) (object.get("type")));
		post.setUserID(object.getString("user"));
		post.setUser(member.getName());
		post.setMusicGenre(object.getString("musicGenre"));
		post.setNumberOfView(object.getLong("numberOfViews"));
		post.setNumberOfReport(object.getLong("numberOfReports"));
		post.setRating((float) object.getDouble("rating"));
		post.setNumberOfRating(object.getLong("numberOfRating"));
		post.setPostTime(object.getDate("postTime"));
		
		return post;
	}
	
	public Post toModel(BasicDBObject object, DBCollection memberCollection){
		
		Post post = new Post();
		Member member = new Member();
		
		member = memberToModel(object.getString("user"), memberCollection);

		post.setId(object.getObjectId("_id").toString());
		post.setTitle(object.getString("title"));
		post.setContent(object.getString("content"));
		post.setImage(object.getString("image"));
		post.setDescription(object.getString("description"));
		post.setState((Integer) (object.get("state")));
		post.setType((Integer) (object.get("type")));
		post.setUserID(object.getString("user"));
		post.setUser(member.getName());
		post.setUserImage(member.getAvatar());
		post.setMusicGenre(object.getString("musicGenre"));
		post.setNumberOfView(object.getLong("numberOfViews"));
		post.setNumberOfReport(object.getLong("numberOfReports"));
		post.setRating((float) object.getDouble("rating"));
		post.setNumberOfRating(object.getLong("numberOfRating"));
		post.setPostTime(object.getDate("postTime"));
		post.setCommentList(commentToModel((BasicDBList) object.get("comment"), memberCollection));
		
		return post;
	}
	
	public Post toModelDisplay(BasicDBObject object, DBCollection memberCollection){
		
		Post post = new Post();
		Member member = new Member();
		
		member = memberToModel(object.getString("user"), memberCollection);

		post.setId(object.getObjectId("_id").toString());
		post.setTitle(object.getString("title"));
		post.setContent(object.getString("content"));
		post.setImage(object.getString("image"));
		post.setDescription(object.getString("description"));
		post.setState((Integer) (object.get("state")));
		post.setType((Integer) (object.get("type")));
		post.setUserID(object.getString("user"));
		post.setUser(member.getName());
		post.setUserImage(member.getAvatar());
		post.setMusicGenre(object.getString("musicGenre"));
		post.setNumberOfView(object.getLong("numberOfViews"));
		post.setNumberOfReport(object.getLong("numberOfReports"));
		post.setRating((float) object.getDouble("rating"));
		post.setNumberOfRating(object.getLong("numberOfRating"));
		post.setPostTime(object.getDate("postTime"));
		
		return post;
	}
	
	public Member memberToModel(String id, DBCollection colection){
		
		UserConverter userConverter = new UserConverter();
		BasicDBObject object = new BasicDBObject();
		
		object = (BasicDBObject) colection.findOne(new BasicDBObject("_id", new ObjectId(id)));
		
		return userConverter.toModel(object);
	}
	
	public List<Comment> commentToModel(BasicDBList commentDBList, DBCollection memberCollection) {
		List<Comment> commentList = new ArrayList<Comment>();
		Comment comment;
		BasicDBObject object;
		Member member;
		for(int i = 0; i < commentDBList.size(); i++){
			comment = new Comment();
			member = new Member();
			
			object = (BasicDBObject) commentDBList.get(i);
			
			member = memberToModel(object.getString("commentUser"), memberCollection);
			comment.setUserID(object.getString("commentUser"));
			comment.setUser(member.getName());
			comment.setUserImage(member.getAvatar());
			comment.setContent(object.getString("content"));
			comment.setCommentTime(object.getDate("commentTime"));

			commentList.add(comment);
		}
		return commentList;
	}

}

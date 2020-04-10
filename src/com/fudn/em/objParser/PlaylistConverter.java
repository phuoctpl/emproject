package com.fudn.em.objParser;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Comment;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bean.Post;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class PlaylistConverter implements IModelConverter<Playlist>{

	@Override
	public Playlist toModel(BasicDBObject object) {
		
		return null;
	}

	@Override
	public BasicDBObject toDBObject(Playlist model) {
		
		return new BasicDBObject("title", model.getTitle())
		.append("image", model.getImage())
		.append("description", model.getDescription())
		.append("content", new ArrayList<String>())
		.append("type", model.getType())
		.append("userId", model.getUserId())
		.append("musicGenre", model.getMusicGenre())
		.append("numberOfViews", model.getNumberOfView())
		.append("numberOfReports", model.getNumberOfReport())
		.append("rating", model.getRating())
		.append("numberOfRating", model.getNumberOfRating())
		.append("postTime", new Date())
		.append("state", model.getState())
		.append("comment",  new ArrayList<String>());
	}
	
	public BasicDBObject commenttoDBObject() {
		return null;
	}
	
	public Playlist toModel(BasicDBObject object, DBCollection postCollection, DBCollection memberCollection){
		
		Playlist playlist = new Playlist();
		Member member = new Member();
		
		member = memberToModel(object.getString("user"), memberCollection);

		playlist.setId(object.getObjectId("_id").toString());
		playlist.setTitle(object.getString("title"));
		playlist.setImage(object.getString("image"));
		playlist.setDescription(object.getString("description"));
		playlist.setType((Integer) (object.get("type")));
		playlist.setUserId(object.getString("user"));
		playlist.setUser(member.getName());
		playlist.setUserImage(member.getAvatar());
		playlist.setMusicGenre(object.getString("musicGenre"));
		playlist.setNumberOfView(object.getLong("numberOfViews"));
		playlist.setNumberOfReport(object.getLong("numberOfReports"));
		playlist.setRating((float) object.getDouble("rating"));
		playlist.setNumberOfRating(object.getLong("numberOfRating"));
		playlist.setPostTime(object.getDate("postTime"));
		playlist.setCommentList(commentToModel((BasicDBList) object.get("comment"), memberCollection));
		playlist.setPostList(postToModel((List<String>) object.get("content"), postCollection, memberCollection));
		
		return playlist;
	}
	
public Playlist toModelDisplay(BasicDBObject object, DBCollection postCollection, DBCollection memberCollection){
		
		Playlist playlist = new Playlist();
		Member member = new Member();
		
		member = memberToModel(object.getString("user"), memberCollection);

		playlist.setId(object.getObjectId("_id").toString());
		playlist.setTitle(object.getString("title"));
		playlist.setImage(object.getString("image"));
		playlist.setDescription(object.getString("description"));
		playlist.setUserId(object.getString("user"));
		playlist.setUser(member.getName());
		playlist.setUserImage(member.getAvatar());
		playlist.setMusicGenre(object.getString("musicGenre"));
		playlist.setNumberOfView(object.getLong("numberOfViews"));
		playlist.setNumberOfReport(object.getLong("numberOfReports"));
		playlist.setRating((float) object.getDouble("rating"));
		playlist.setNumberOfRating(object.getLong("numberOfRating"));
		playlist.setPostTime(object.getDate("postTime"));
		
		return playlist;
	}
	
	public Member memberToModel(String id, DBCollection colection){
		
		UserConverter userConverter = new UserConverter();
		BasicDBObject object = new BasicDBObject();
		
		object = (BasicDBObject) colection.findOne(new BasicDBObject("_id", new ObjectId(id)));
		
		return userConverter.toModel(object);
	}
	
	public List<Post> postToModel(List<String> postIdList, DBCollection postCollection, DBCollection memberCollection){
		List<Post> postList = new ArrayList<Post>();
		List<ObjectId> idList = new ArrayList<ObjectId>();
		for (int i = 0; i < postIdList.size(); i++) {
			idList.add(new ObjectId(postIdList.get(i)));
		}
		Post post;
		PostConverter postConverter = new PostConverter();
		
		DBCursor cursor = postCollection.find(new BasicDBObject("_id", new BasicDBObject("$in", idList)));
		
		DBObject object;
		
		for (int i = 0; i < cursor.size(); i++) {
			object = cursor.next();
			post = postConverter.toModelDisplay((BasicDBObject) object, memberCollection);
			postList.add(post);
		}
		
//		cursor.close();
		return postList;
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

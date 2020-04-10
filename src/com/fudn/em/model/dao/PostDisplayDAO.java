package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Comment;
import com.fudn.em.model.bean.Post;
import com.fudn.em.objParser.PostConverter;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class PostDisplayDAO extends BaseDAO<Post>{

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

	@Override
	public Post findDocumentById(String _id) {
		
		Post post = new Post();
		
		PostConverter postConverter = new PostConverter();
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		DBCursor cusor = postCollection.find(new BasicDBObject("_id", new ObjectId(_id))); 
		
		if(cusor.hasNext()){
			post = postConverter.toModel((BasicDBObject)cusor.next(), memberCollection);
			
			DBObject search = new BasicDBObject("_id", new ObjectId(_id));
			DBObject update = new BasicDBObject("$set", new BasicDBObject("numberOfViews", post.getNumberOfView() + 1));
			postCollection.update(search, update);
			
			return post;
		}else {
			return null;
		}
	}
	
	public List<Post> getSimilarAlbum (String postGenre) {
		
		List<Post> postList = new ArrayList<Post>();
		Post post;
		
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		DBObject object;
		DBCursor cusor = postCollection.find(new BasicDBObject("musicGenre", postGenre)).limit(10);
		
		while(cusor.hasNext()){
			object = cusor.next();
			post =  postConverter.toModel((BasicDBObject)object, memberCollection);
			postList.add(post);
		}
		return postList;
	}
	
	public List<Post> getSameUserAlbum (String memberId) {
		List<Post> postList = new ArrayList<Post>();
		Post post;
		
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		DBObject object;
		DBCursor cusor = postCollection.find(new BasicDBObject("user", memberId)).limit(10);
		
		while(cusor.hasNext()){
			object = cusor.next();
			post =  postConverter.toModel((BasicDBObject)object, memberCollection);
			postList.add(post);
		}
		return postList;
	}
	
	public List<Post> getMemberAlbum (String memberId) {
		List<Post> postList = new ArrayList<Post>();
		Post post;
		
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		DBObject object;
		DBCursor cusor = postCollection.find(new BasicDBObject("user", memberId));
		
		while(cusor.hasNext()){
			object = cusor.next();
			post =  postConverter.toModel((BasicDBObject)object, memberCollection);
			postList.add(post);
		}
		return postList;
	}
	
	public void addCommentToPost(String id, Comment comment) {
		DBCollection postCollection = getOjbDBCollection("Post");
		
		postCollection.update(new BasicDBObject("_id", new ObjectId("53bad2f9ae48c7ec8b3a77b3")), 
				new BasicDBObject("$push", new BasicDBObject("comment", new BasicDBObject("commentUser", comment.getUserID())
				.append("content", comment.getContent()).append("commentTime", new Date()))));
	}
	
	public void removeCommentToPost(String id, Comment comment) {
		DBCollection postCollection = getOjbDBCollection("Post");
		
		postCollection.update(new BasicDBObject("_id", new ObjectId("53bad2f9ae48c7ec8b3a77b3")), 
				new BasicDBObject("$pull", new BasicDBObject("comment", new BasicDBObject("commentUser", comment.getUserID())
				.append("content", comment.getContent()).append("commentTime", new Date()))));
	}
	
	public void rating(Post post) {
		DBCollection postCollection = getOjbDBCollection("Post");
		
		DBObject search = new BasicDBObject("_id",  new ObjectId(post.getId()));
		
		DBObject update = new BasicDBObject("$set", new BasicDBObject("rating", post.getRating())
				.append("numberOfRating", post.getNumberOfRating()));
		
		postCollection.update(search, update);
	}
	
	public void report(String id, long numberOfView, long numberOfReport, String description, String userId) {
		
		DBCollection reportCollection = getOjbDBCollection("Report");
		DBCollection postCollection = getOjbDBCollection("Post");
//		DBCollection memberCollection = getOjbDBCollection("Member");
		
		long number = numberOfReport + 1;
		
		if((numberOfView>=50)&&((numberOfReport/numberOfView)>=0.5)){
//			DBObject object = postCollection.findOne(new BasicDBObject("_id", new ObjectId(id)));
			reportCollection.remove(new BasicDBObject("post", id));
			postCollection.remove(new BasicDBObject("_id", new ObjectId(id)));
			
		}else if(numberOfReport>0){
			DBObject object = new BasicDBObject("$set", new BasicDBObject("numberOfReports", number));
			postCollection.update(new BasicDBObject("_id", new ObjectId(id)), object);
			
			object = new BasicDBObject("$push", new BasicDBObject("comment", description));
			postCollection.update(new BasicDBObject("_id", new ObjectId(id)), object);
		}else{
			DBObject object = new BasicDBObject()
			.append("post", id)
			.append("admin", null)
			.append("handleTime", null)
			.append("comment", new ArrayList<String>().add(description));
			reportCollection.insert(object);
		}
	}

}

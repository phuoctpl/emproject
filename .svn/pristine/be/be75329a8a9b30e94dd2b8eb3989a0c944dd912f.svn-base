package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Playlist;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.TopUser;
import com.fudn.em.objParser.PlaylistConverter;
import com.fudn.em.objParser.PostConverter;
import com.fudn.em.objParser.UserConverter;
import com.mongodb.AggregationOutput;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class PostListDAO extends BaseDAO<Post> {

	private DB project;

	@Override
	protected void insert(Post object) {
		// TODO Auto-generated method stub

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
	protected Post findDocumentById(String _id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Post> getPopularAudio(int index) throws Exception {

		List<Post> postList = new ArrayList<Post>();

		project = getDB();
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		DBCursor cursor = postCollection.find(new BasicDBObject("type", 0).append("state", 1))
				.sort(new BasicDBObject("numberOfViews", -1))
				.skip((index - 1) * 3).limit(3);

		PostConverter postConverter = new PostConverter();

		while (cursor.hasNext()) {
			postList.add(postConverter.toModel((BasicDBObject) cursor.next(), memberCollection));
		}
//		cursor.close();
//		closeMongoClient();
		return postList;
	}
	
	public List<Post> getPopularVideo(int index) throws Exception {

		List<Post> postList = new ArrayList<Post>();

		project = getDB();
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		DBCursor cursor = postCollection.find(new BasicDBObject("type", 1).append("state", 1))
				.sort(new BasicDBObject("numberOfViews", -1))
				.skip((index - 1) * 3).limit(3);

		PostConverter postConverter = new PostConverter();

		while (cursor.hasNext()) {
			postList.add(postConverter.toModel((BasicDBObject) cursor.next(),
					memberCollection));
		}
//		cursor.close();
//		closeMongoClient();
		return postList;
	}
	
	public List<Post> getNewPost(int index) throws Exception {

		List<Post> postList = new ArrayList<Post>();

		project = getDB();
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		DBCursor cursor = postCollection.find()
				.sort(new BasicDBObject("postTime", -1))
				.skip((index - 1) * 3).limit(3);

		PostConverter postConverter = new PostConverter();
		
		while (cursor.hasNext()) {
			postList.add(postConverter.toModel((BasicDBObject) cursor.next(),
					memberCollection));
		}
//		cursor.close();
//		closeMongoClient();
		return postList;
	}
	
	public List<Playlist> getPopularAudioAlbum(int index) throws Exception {

		List<Playlist> albumList = new ArrayList<Playlist>();

		project = getDB();
		DBCollection playlistCollection = project.getCollection("Playlist");
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		DBCursor cursor = playlistCollection.find(new BasicDBObject("type", 0).append("state", 1))
				.sort(new BasicDBObject("numberOfViews", -1))
				.skip((index - 1) * 3).limit(3);

		PlaylistConverter playlistConverter = new PlaylistConverter();

		while (cursor.hasNext()) {
			albumList.add(playlistConverter.toModel((BasicDBObject) cursor.next(), postCollection,
					memberCollection));
		}
		
//		cursor.close();
//		closeMongoClient();
		return albumList;
	}
	
	public List<Playlist> getPopularVideoAlbum(int index) throws Exception {

		List<Playlist> albumList = new ArrayList<Playlist>();

		project = getDB();
		DBCollection playlistCollection = project.getCollection("Playlist");
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		DBCursor cursor = playlistCollection.find(new BasicDBObject("type", 1).append("state", 1))
				.sort(new BasicDBObject("numberOfViews", -1))
				.skip((index - 1) * 3).limit(3);

		PlaylistConverter playlistConverter = new PlaylistConverter();

		while (cursor.hasNext()) {
			albumList.add(playlistConverter.toModel((BasicDBObject) cursor.next(), postCollection,
					memberCollection));
		}
//		cursor.close();
//		closeMongoClient();
		return albumList;
	}
	
	public List<Playlist> getNewAlbum(int index) throws Exception {

		List<Playlist> albumList = new ArrayList<Playlist>();

		project = getDB();
		DBCollection playlistCollection = project.getCollection("Playlist");
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		DBCursor cursor = playlistCollection.find(new BasicDBObject("state", 1))
				.sort(new BasicDBObject("postTime", -1))
				.skip((index - 1) * 3).limit(3);

		PlaylistConverter playlistConverter = new PlaylistConverter();

		while (cursor.hasNext()) {
			albumList.add(playlistConverter.toModel((BasicDBObject) cursor.next(), postCollection,
					memberCollection));
		}
//		cursor.close();
//		closeMongoClient();
		return albumList;
	}
	
	public List<TopUser> getUserList(int index) throws Exception{
		
		project = getDB();
		
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		DBObject groupFields = new BasicDBObject( "_id", "$user");
		
		groupFields.put("count", new BasicDBObject( "$sum", 1));
	    DBObject group = new BasicDBObject("$group", groupFields);
	    
	    DBObject sortFields = new BasicDBObject("count", -1);
	    DBObject sort = new BasicDBObject("$sort", sortFields);
	    
	    DBObject match = new BasicDBObject("$match", new BasicDBObject( "state", 1));
	    
	    AggregationOutput output = post.aggregate(match, group, sort);
	    
	    BasicDBList basicDBList = (BasicDBList) output.getCommandResult().get("result");
	    List<TopUser> topUserList = new ArrayList<TopUser>();
	    TopUser topUser;
	    BasicDBObject object;
	    BasicDBObject userObject;
	    for (int i = (index-1)*3; (i < basicDBList.size())&&(i<3); i++) {
	    	topUser = new TopUser();
	    	object = (BasicDBObject) basicDBList.get(i);
	    	
	    	userObject = (BasicDBObject) member.findOne(new BasicDBObject("_id", new ObjectId(object.getString("_id"))));
	    	
	    	topUser.setId(object.getString("_id"));
	    	topUser.setName(userObject.getString("name"));
	    	topUser.setImage(userObject.getString("avatar"));
	    	topUser.setNumberOfPost(object.getLong("count"));
	    	topUserList.add(topUser);
		}
	    
//	    closeMongoClient();
	    return topUserList;
	}
	
	public List<Post> getResultPostTitle(String key) {
		
		List<Post> postList = new ArrayList<Post>();
		Post post = new Post();
		
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		DBObject obj = new BasicDBObject();
		obj.put("title", new BasicDBObject("$regex", key));
		DBCursor cursor = postCollection.find(obj);
		
		DBObject object;
		PostConverter postConverter = new PostConverter();
		
		while(cursor.hasNext()){
			object = cursor.next();
			post = postConverter.toModel((BasicDBObject)object, memberCollection);
			postList.add(post);
		}
		return postList;
	}
	
	public List<Post> getResultPostGenre(String key) {
		List<Post> postList = new ArrayList<Post>();
		Post post = new Post();
		
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		DBObject obj = new BasicDBObject();
		obj.put("musicGenre", new BasicDBObject("$regex", key));
		DBCursor cursor = postCollection.find(obj);
		
		DBObject object;
		PostConverter postConverter = new PostConverter();
		
		while(cursor.hasNext()){
			object = cursor.next();
			post = postConverter.toModel((BasicDBObject)object, memberCollection);
			postList.add(post);
		}
		return postList;
	}
	
	public List<Playlist> getResultAlbumTitle(String key) {
		List<Playlist> albumList = new ArrayList<Playlist>();
		Playlist playlist = new Playlist();
		
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		DBObject obj = new BasicDBObject();
		obj.put("title", new BasicDBObject("$regex", key));
		DBCursor cursor = playlistCollection.find(obj);
		
		DBObject object;
		PlaylistConverter playlistConverter = new PlaylistConverter();
		
		while(cursor.hasNext()){
			object = cursor.next();
			playlist = playlistConverter.toModel((BasicDBObject)object, postCollection, memberCollection);
			albumList.add(playlist);
		}
		return albumList;
	}
	
	public List<Playlist> getResultAlbumGenre(String key) {
		List<Playlist> albumList = new ArrayList<Playlist>();
		Playlist playlist = new Playlist();
		
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		DBObject obj = new BasicDBObject();
		obj.put("musicGenre", new BasicDBObject("$regex", key));
		DBCursor cursor = playlistCollection.find(obj);
		
		DBObject object;
		PlaylistConverter playlistConverter = new PlaylistConverter();
		
		while(cursor.hasNext()){
			object = cursor.next();
			playlist = playlistConverter.toModel((BasicDBObject)object, postCollection, memberCollection);
			albumList.add(playlist);
		}
		return albumList;
	}
	
	public List<Member> getResultMember(String key) {
		List<Member> memberList = new ArrayList<Member>();
		Member member = new Member();
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		DBObject obj = new BasicDBObject();
		obj.put("name", new BasicDBObject("$regex", key));
		DBCursor cursor = memberCollection.find(obj);
		
		DBObject object;
		UserConverter userConverter = new UserConverter();
		while(cursor.hasNext()){
			object = cursor.next();
			member = userConverter.toModel((BasicDBObject)object);
			memberList.add(member);
		}
		return memberList;
	}
}

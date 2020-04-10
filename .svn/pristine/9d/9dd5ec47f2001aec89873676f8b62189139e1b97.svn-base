package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Comment;
import com.fudn.em.model.bean.Playlist;
import com.fudn.em.objParser.PlaylistConverter;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class PlaylistDAO extends BaseDAO<Playlist> {

	@Override
	protected void insert(Playlist object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected Playlist readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void update(Playlist oldObject, Playlist newObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void delete(Playlist object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Playlist findDocumentById(String _id) {
		
		Playlist playList = new Playlist();
		
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PlaylistConverter playlistConverter = new PlaylistConverter();
		DBObject object;
		DBCursor cusor = playlistCollection.find(new BasicDBObject("_id", new ObjectId(_id)));
		
		if(cusor.hasNext()){
			object = cusor.next();
			
			playList = playlistConverter.toModel((BasicDBObject)object, postCollection, memberCollection);
			
			DBObject search = new BasicDBObject("_id", new ObjectId(_id));
			DBObject update = new BasicDBObject("$set", new BasicDBObject("numberOfViews", playList.getNumberOfView() + 1));
			playlistCollection.update(search, update);
			
			return playList;
		}else{
			return null;
		}
	}
	
	public List<Playlist> getSimilarAlbum (String playlistGenre) {
		
		List<Playlist> albumList = new ArrayList<Playlist>();
		Playlist playlist;
		
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PlaylistConverter playlistConverter = new PlaylistConverter();
		DBObject object;
		DBCursor cusor = playlistCollection.find(new BasicDBObject("musicGenre", playlistGenre)).limit(10);
		
		while(cusor.hasNext()){
			object = cusor.next();
			playlist =  playlistConverter.toModelDisplay((BasicDBObject)object, postCollection, memberCollection);
			albumList.add(playlist);
		}
		return albumList;
	}
	
	public List<Playlist> getSameUserAlbum (String memberId) {
		
		List<Playlist> albumList = new ArrayList<Playlist>();
		Playlist playlist;
		
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PlaylistConverter playlistConverter = new PlaylistConverter();
		DBObject object;
		DBCursor cusor = playlistCollection.find(new BasicDBObject("user", memberId)).limit(10);
		
		while(cusor.hasNext()){
			object = cusor.next();
			playlist =  playlistConverter.toModelDisplay((BasicDBObject)object, postCollection, memberCollection);
			albumList.add(playlist);
		}
		return albumList;
	}
	
	public List<Playlist> getMemberAlbum (String memberId) {
		
		List<Playlist> albumList = new ArrayList<Playlist>();
		Playlist playlist;
		
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		DBCollection postCollection = getOjbDBCollection("Post");
		DBCollection memberCollection = getOjbDBCollection("Member");
		
		PlaylistConverter playlistConverter = new PlaylistConverter();
		DBObject object;
		DBCursor cusor = playlistCollection.find(new BasicDBObject("user", memberId));
		
		while(cusor.hasNext()){
			object = cusor.next();
			playlist =  playlistConverter.toModelDisplay((BasicDBObject)object, postCollection, memberCollection);
			albumList.add(playlist);
		}
		return albumList;
	}
	
	public void addPostToPlayList(String postId, String playlistId) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		
		playlistCollection.update(new BasicDBObject("_id", new ObjectId(playlistId)), 
				new BasicDBObject("$push", new BasicDBObject("content", postId)));
	}
	
	public void removePostFromPlayList(String postId, String playlistId) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		
		playlistCollection.update(new BasicDBObject("_id", new ObjectId(playlistId)), 
				new BasicDBObject("$pull", new BasicDBObject("content", postId)));
	}
	
	public void createAlbum(Playlist playlist) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		
		PlaylistConverter playlistConverter = new PlaylistConverter();
		
		playlistCollection.insert(playlistConverter.toDBObject(playlist));
	}
	
	public void deletePlaylist(String id) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		playlistCollection.remove(new BasicDBObject("_id", new ObjectId(id)));
	}
	
	public void addCommentToAlbum(String id, Comment comment) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
//		DBCollection notificationCollection = getOjbDBCollection("Notification");
		
		playlistCollection.update(new BasicDBObject("_id", new ObjectId("53bad2f9ae48c7ec8b3a77b3")), 
				new BasicDBObject("$push", new BasicDBObject("comment", new BasicDBObject("commentUser", comment.getUserID())
				.append("content", comment.getContent()).append("commentTime", new Date()))));
/*		NotificationConverter notificationConverter = new NotificationConverter();
		
//		notificationCollection.insert(notificationConverter.toDBObject(notification));
*/	}
	
	public void removeCommentToAlbum(String id, Comment comment) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		
		playlistCollection.update(new BasicDBObject("_id", new ObjectId("53bad2f9ae48c7ec8b3a77b3")), 
				new BasicDBObject("$pull", new BasicDBObject("comment", new BasicDBObject("commentUser", comment.getUserID())
				.append("content", comment.getContent()).append("commentTime", new Date()))));
	}
	
	public void rating(Playlist playList) {
		DBCollection playlistCollection = getOjbDBCollection("Playlist");
		
		DBObject search = new BasicDBObject("_id",  new ObjectId(playList.getId()));
		
		DBObject update = new BasicDBObject("$set", new BasicDBObject("rating", playList.getRating())
				.append("numberOfRating", playList.getNumberOfRating()));
		
		playlistCollection.update(search, update);
	}
	
	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}
	
}

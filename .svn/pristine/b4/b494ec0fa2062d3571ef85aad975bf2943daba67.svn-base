package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.bson.types.ObjectId;

import com.fudn.em.common.CommonsUtils;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Post;
import com.fudn.em.objParser.IModelConverter;
import com.fudn.em.objParser.MemberConverter;
import com.fudn.em.objParser.NotificationConverter;
import com.fudn.em.objParser.UploadConverter;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class AdminDAO extends BaseDAO<Member> {
	private IModelConverter<Member> converter;
	private IModelConverter<Post> postConverter;
	
	public AdminDAO(){
		try {
			getMongoClient();
			getDB();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		converter = new MemberConverter();
		postConverter = new UploadConverter();
	}
	
	public List<Member> getAllUser() {
		List<Member> memberList = new ArrayList<Member>();
		Member user = new Member();
		DBCursor cursor = getOjbDBCollection("Member").find(new BasicDBObject("memberRole", 3));
		
		while(cursor.hasNext()){
			user = new Member();
System.out.println();
			DBObject resultElement = cursor.next();
			
			user.set_id(resultElement.get("_id").toString());
			user.setEmail(resultElement.get("email").toString());
			user.setName(resultElement.get("name").toString());
			user.setGender(resultElement.get("gender").toString());
			user.setAddress(resultElement.get("address").toString());
			user.setCountry(resultElement.get("country").toString());
			user.setCity(resultElement.get("city").toString());
			user.setPhone(resultElement.get("phone").toString());
			user.setAvatar(resultElement.get("avatar").toString());
			user.setEnterDate((Date) resultElement.get("enterDate"));
			user.setMusicGenre(resultElement.get("musicGenre").toString());
			if(resultElement.get("birthDate")== null){
				user.setBirthDate(null);
			} else {
				user.setBirthDate((Date) resultElement.get("birthDate"));
			}
			user.setActive((Integer) resultElement.get("active"));
			
			memberList.add(user);
		}
		
		closeMongoClient();
		return memberList;
	}
	
	public List<Member> getAllAdmin() {
		List<Member> memberList = new ArrayList<Member>();
		Member user = new Member();
		DBCursor cursor = getOjbDBCollection("Member").find(new BasicDBObject("memberRole", 2));
		
		while(cursor.hasNext()){
			user = new Member();

			DBObject resultElement = cursor.next();
			
			user.set_id(resultElement.get("_id").toString());
			user.setEmail(resultElement.get("email").toString());
			user.setName(resultElement.get("name").toString());
			user.setGender(resultElement.get("gender").toString());
			user.setAddress(resultElement.get("address").toString());
			user.setCountry(resultElement.get("country").toString());
			user.setCity(resultElement.get("city").toString());
			user.setPhone(resultElement.get("phone").toString());
			user.setAvatar(resultElement.get("avatar").toString());
			user.setEnterDate((Date) resultElement.get("enterDate"));
			user.setMusicGenre(resultElement.get("musicGenre").toString());
			if(resultElement.get("birthDate")== null){
				user.setBirthDate(null);
			} else {
				user.setBirthDate((Date) resultElement.get("birthDate"));
			}
			user.setActive((Integer) resultElement.get("active"));
			user.setMemberRole((Integer) resultElement.get("memberRole"));
			
			memberList.add(user);
		}
		
		closeMongoClient();
		return memberList;
	}
	
	public void lockUser(String userId) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("active", 0));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("_id", new ObjectId(userId));
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
		
	}

	public void unlockUser(String userId) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("active", 1));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("_id", new ObjectId(userId));
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
		
	}
	
	public void unlockAdmin(String userId) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("active", 1));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("_id", new ObjectId(userId));
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
		
	}
	public void lockPost(String userId) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("state", 0));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("user", userId);
		
		getOjbDBCollection("Post").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
	}
	
	public void unlockPost(String userId) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("state", 1));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("user", userId);
		
		getOjbDBCollection("Post").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
	}
	@Override
	protected void insert(Member object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected Member readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void update(Member oldObject, Member newObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected void delete(Member object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	protected Member findDocumentById(String _id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}


	public IModelConverter<Member> getConverter() {
		return converter;
	}


	public void setConverter(IModelConverter<Member> converter) {
		this.converter = converter;
	}

	public IModelConverter<Post> getPostConverter() {
		return postConverter;
	}

	public void setPostConverter(IModelConverter<Post> postConverter) {
		this.postConverter = postConverter;
	}

	

	

	

	

	

	
	


}

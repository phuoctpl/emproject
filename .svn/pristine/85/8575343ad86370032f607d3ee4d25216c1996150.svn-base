package com.fudn.em.model.dao;

import java.net.UnknownHostException;

import com.fudn.em.common.Constant;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Member;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

public class AuthenticationDAO {
	
	private MongoClient mongoClient;
	private DBCollection userCollection;
	private DB userDB;

	protected MongoClient getMongoClient() throws DAOException {
		try {
			if(mongoClient == null) {
				//MongoClientURI uri = new MongoClientURI("mongodb://quangnbnse90114:123456789@ds045089.mongolab.com:45089/emotion_music_db");
				//mongoClient = new MongoClient(uri);
//				mongoClient = new MongoClient(Constant.DBCONFIG_HOSTNAME, Constant.DBCONFIG_PORT);
				mongoClient = new MongoClient(Constant.DBCONFIG_HOSTNAME, Constant.DBCONFIG_PORT);
				return mongoClient;
			} else {
				return mongoClient;
			}
		} catch (UnknownHostException e) {
			throw new DAOException(e.getMessage());
		}
	}

	public AuthenticationDAO() throws UnknownHostException, DAOException {
			mongoClient = getMongoClient();
			userDB = getDB();
			userCollection = userDB.getCollection("Member");
	}

	protected DB getDB() throws DAOException {
		return getMongoClient().getDB("emdb");
	}
	
	public boolean checkMember(String email) {
		boolean result = false;
		BasicDBObject query = new BasicDBObject();
		query.put("email", email);
		DBCursor cursor = userCollection.find(query);
		if (cursor.hasNext()) {
			result = true;
		}
		return result;
	}
	
	public Member getMember(String email) {
		Member member = null;
		MemberDAO dao = new MemberDAO();
		BasicDBObject query = new BasicDBObject();
		query.put("email", email);
		DBCursor cursor = userCollection.find(query);
		DBObject dbobject = null;
		
		if (cursor.hasNext()) {
			dbobject = cursor.next();
			member = dao.findDocumentById(dbobject.get("_id").toString());
		}
		
		return member;
	}
	
	public boolean checkFbId(String fbId){
		MemberDAO dao = new MemberDAO();
		BasicDBObject query = new BasicDBObject();
		query.put("fbId", fbId);
		DBCursor cursor = userCollection.find(query);
		return cursor.hasNext();
	}

}

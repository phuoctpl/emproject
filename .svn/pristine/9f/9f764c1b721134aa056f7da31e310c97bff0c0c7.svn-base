package com.fudn.em.model.dao;

import java.net.UnknownHostException;

import com.fudn.em.common.Constant;
import com.fudn.em.exception.DAOException;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;

public abstract class BaseDAO<T> {
	private MongoClient mongoClient;
	
	protected MongoClient getMongoClient() throws DAOException{
		try {
			if(mongoClient == null) {
		//MongoClientURI uri = new MongoClientURI("mongodb://quangnbnse90114:123456789@ds045089.mongolab.com:45089/emotion_music_db");
				mongoClient = new MongoClient(Constant.DBCONFIG_HOSTNAME, Constant.DBCONFIG_PORT);
				return mongoClient;

			} else {
				return mongoClient;
			}
		} catch (UnknownHostException e) {
			throw new DAOException(e.getMessage());
		}
	}
	protected DB getDB() throws DAOException {
		return getMongoClient().getDB("emdb");
	}
	
	protected DBCollection getOjbDBCollection(String table) {
		try {
			return getDB().getCollection(table);
		} catch (DAOException e) {
			return null;
		}
	} 
	
	protected void closeMongoClient(){
		if(mongoClient != null){
			mongoClient.close();
		}
	}
	
	protected abstract void insert(T object);
	
	protected abstract T readItem(DBObject object);
	
	protected abstract void update(T oldObject, T newObject);
	
	protected abstract void delete(T object);
	
	protected abstract T findDocumentById(String _id);
	
	protected abstract DBCollection getDBCollection();
}

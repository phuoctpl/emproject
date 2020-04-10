package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Contest;
import com.fudn.em.objParser.ContestConverter;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class ContestDAO extends BaseDAO<Contest> {

	private MongoClient mongoClient;
	private DBCollection contestCollection;
	private DB contestDB;
	private ContestConverter converter;
	
	public ContestDAO () {
		try {
			mongoClient = getMongoClient();
			contestDB = getDB();
			contestCollection = contestDB.getCollection("Contest");
			converter = new ContestConverter();
		} catch (DAOException e) {
			e.printStackTrace();
		}		
	}

	@Override
	public void insert(Contest object) {
		BasicDBObject newContest = converter.toDBObject(object);
		contestCollection.insert(newContest);
	}
	
	@Override
	public Contest readItem(DBObject object) {
		return converter.toModel((BasicDBObject) object);
	}

	@Override
	public void update(Contest oldObject, Contest newObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Contest object) {
		BasicDBObject query = new BasicDBObject("_id", new ObjectId(object.get_id()));
		contestCollection.remove(query);
	}

	@Override
	public Contest findDocumentById(String _id) {
		BasicDBObject obj = (BasicDBObject) contestCollection.find(new BasicDBObject("_id", new ObjectId(_id))).next();
		return converter.toModel(obj);
	}

	@Override
	public DBCollection getDBCollection() {
		return contestCollection;
	}

	public List<Contest> getListContest() {
		List<Contest> list = new ArrayList<Contest>();
		DBCursor cursor = contestCollection.find();
		DBObject object = null;
		while (cursor.hasNext()) {
				object = cursor.next();
				list.add(findDocumentById(object.get("_id").toString()));
		}
		return list;
	}

	public void updateUserToContest(String contestId, List<String> newUser) {
		BasicDBObject newDocument = new BasicDBObject();
		newDocument.append("$set", new BasicDBObject().append("user", newUser));
		BasicDBObject query = new BasicDBObject().append("_id", new ObjectId(contestId));
		contestCollection.update(query, newDocument, false, false);
	}

	public void updateWinner(String contestId, String user) {
		BasicDBObject newDocument = new BasicDBObject();
		newDocument.append("$set", new BasicDBObject().append("winner", user));
		BasicDBObject query = new BasicDBObject().append("_id", new ObjectId(contestId));
		contestCollection.update(query, newDocument, false, false);
	}
	
	public static void main(String[] args) {
		ContestDAO dao = new ContestDAO();
		dao.deleteContest("53b6771eae48c7ec8b388002");
	}

	public void deleteContest(String contestId) {
		BasicDBObject object = new BasicDBObject().append("_id", new ObjectId(contestId));
		contestCollection.remove(object);
	}
	
	
}

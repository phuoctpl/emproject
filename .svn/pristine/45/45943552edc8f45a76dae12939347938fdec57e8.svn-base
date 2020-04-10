package com.fudn.em.model.dao;


import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;
import org.eclipse.persistence.internal.sessions.remote.ObjectDescriptor;

import com.fudn.em.common.Constant;
import com.fudn.em.message.UserMessage;
import com.fudn.em.model.bean.Member;
import com.fudn.em.objParser.MemberConverter;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class MemberDAO extends BaseDAO<Member> {
	
	private DBCollection memberCollection;
	private MemberConverter converter;
	
	public MemberDAO () {
			memberCollection = getOjbDBCollection("Member");
			converter = new MemberConverter();
	}
	
	@Override
	public void insert(Member object) {
		BasicDBObject newMember = converter.toDBObject(object);
		memberCollection.insert(newMember);	
	}
	
	
	@Override
	public Member readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Member oldObject, Member newObject) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Member object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Member findDocumentById(String _id) {
		BasicDBObject obj = (BasicDBObject) memberCollection.find(
				new BasicDBObject("_id", new ObjectId(_id))).next();
		return converter.toModel(obj);
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public void updatePrestigePoint(String userId, int point) {
		BasicDBObject newDocument = 
				new BasicDBObject().append("$inc", 
				new BasicDBObject().append("prestigePoint", point));
		 
			memberCollection.update(new BasicDBObject().append("_id", new ObjectId(userId)), newDocument);
		
	}
	
	public List<UserMessage> getAllFriendList(String userId){
		memberCollection = getOjbDBCollection(Constant.COLLECTION_MEMBER);
		List<UserMessage> allFriendList = new ArrayList<UserMessage>();
		UserMessage userMessage = null;
		BasicDBObject findCondition = new BasicDBObject(Constant.OBJECT_ID, new ObjectId(userId));
		BasicDBObject fieldLimit = new BasicDBObject(Constant.KEY_FRIEND, true);
		DBCursor cursor = memberCollection.find(findCondition, fieldLimit);
		BasicDBList objectList = (BasicDBList) cursor.next().get(Constant.KEY_FRIEND);
		int sizeOfObjectList = objectList.size();
		ObjectId[] friendIdList = new ObjectId[sizeOfObjectList];
		try{
		for(int i=0; i<sizeOfObjectList; i++){
			friendIdList[i] = new ObjectId(((BasicDBObject)objectList.get(i)).getString(Constant.KEY_ID));
		}
		}catch(Exception e){
			e.printStackTrace();
		}
		fieldLimit = new BasicDBObject(Constant.KEY_NAME, 1);
		findCondition = new BasicDBObject(Constant.OBJECT_ID,new BasicDBObject(Constant.OPERATOR_IN, friendIdList));
		cursor = memberCollection.find(findCondition, fieldLimit);
		while(cursor.hasNext()){
			userMessage = new UserMessage();
			DBObject friendObject = cursor.next();
			userMessage.setUserId(friendObject.get(Constant.OBJECT_ID).toString());
			userMessage.setUsername(friendObject.get(Constant.KEY_NAME).toString());
			allFriendList.add(userMessage);
		}
		cursor.close();
		closeMongoClient();
		return allFriendList;
	}

}

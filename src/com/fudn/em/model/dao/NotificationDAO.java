package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.fudn.em.common.Constant;
import com.fudn.em.model.bean.Notification;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class NotificationDAO extends BaseDAO<Notification> {

	public List<Notification> getAllNotification(String userId) {
		List<Notification> notificationList = new ArrayList<Notification>();
		Notification notification;
		DBCollection notificationColection = getOjbDBCollection(Constant.COLLECTION_NOTIFICATION);
		BasicDBObject findCondition = new BasicDBObject(Constant.KEY_USER_INVOLVE_ID, userId);
		BasicDBObject sortCondition = new BasicDBObject(Constant.KEY_CREATE_TIME, 1);
		DBCursor cursor = notificationColection.find(findCondition).sort(sortCondition);
		while(cursor.hasNext()){
			notification = new Notification();
			DBObject notificationObject = cursor.next();
			notification.setUserInvolvedId(userId);
			notification.setUserCreateId(notificationObject.get(Constant.KEY_USER_CREATE_ID).toString());
			notification.setUserCreateName(notificationObject.get(Constant.KEY_USER_CREATE_NAME).toString());
			notification.setSortContent(notificationObject.get(Constant.KEY_SORT_CONTENT).toString());
			notification.setLinkInvolve(notificationObject.get(Constant.KEY_LINK_INVOLVE).toString());
			notification.setCreateTime(notificationObject.get(Constant.KEY_CREATE_TIME).toString());
			notification.setStatus(Byte.parseByte(notificationObject.get(Constant.KEY_STATUS).toString()));
			notificationList.add(notification);
		}
		if(cursor!=null){
			cursor.close();
		}
		closeMongoClient();
		return notificationList;
	}
	
	public int countNewNotification(String userId){
		DBCollection notificationColection = getOjbDBCollection(Constant.COLLECTION_NOTIFICATION);
		BasicDBObject findCondition = new BasicDBObject(Constant.KEY_USER_INVOLVE_ID, userId).append(Constant.KEY_STATUS, Constant.STATUS_NEW_NOTIFICATION);
		int numberOfNew = notificationColection.find(findCondition).count();
		closeMongoClient();
		return numberOfNew;
	}

	@Override
	protected void insert(Notification object) {
		// TODO Auto-generated method stub

	}

	@Override
	protected Notification readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void update(Notification oldObject, Notification newObject) {
		// TODO Auto-generated method stub

	}

	@Override
	protected void delete(Notification object) {
		// TODO Auto-generated method stub

	}

	@Override
	protected Notification findDocumentById(String _id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}

}

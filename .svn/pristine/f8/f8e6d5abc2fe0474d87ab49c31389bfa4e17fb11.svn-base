package com.fudn.em.model.dao;

import java.util.ArrayList;
import java.util.List;

import com.fudn.em.common.Constant;
import com.fudn.em.message.ChatMessage;
import com.fudn.em.message.Message;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class ChatMessageDAO extends BaseDAO<ChatMessage> {

	private DBCollection messageCollection;

	public void addNewMessage(ChatMessage message) {
		messageCollection = getOjbDBCollection(Constant.COLLECTION_MESSAGE);
		BasicDBObject doc = new BasicDBObject(Constant.KEY_USER_ID,
				message.getUserId())
				.append(Constant.KEY_RECEIVER_ID, message.getReceiverId())
				.append(Constant.KEY_CREATE_TIME, message.getCreateTime())
				.append(Constant.KEY_CONTENT, message.getContent())
				.append(Constant.KEY_STATUS, message.getStatus());
		messageCollection.insert(doc);
		this.closeMongoClient();
	}

	public void markRead(String userId, String receiverId) {
		messageCollection = getOjbDBCollection(Constant.COLLECTION_MESSAGE);
		BasicDBObject newDocument = new BasicDBObject(Constant.KEY_STATUS,
				Message.MESSAGE_OLD);
		BasicDBObject setObject = new BasicDBObject(Constant.OPERATOR_SET, newDocument);
		BasicDBObject findCondition = new BasicDBObject(Constant.KEY_USER_ID, userId)
				.append(Constant.KEY_RECEIVER_ID, receiverId).append(
						Constant.KEY_STATUS, Message.MESSAGE_NEW);
		messageCollection.update(findCondition, setObject);
		closeMongoClient();
	}
	
	public List<ChatMessage> readOldMessage(String userId, String receiverId,
			int startCount) {
		List<ChatMessage> nearlyMessageList = new ArrayList<ChatMessage>();
		ChatMessage chatMessage;
		messageCollection = getOjbDBCollection(Constant.COLLECTION_MESSAGE);
		BasicDBList findConditionOr = new BasicDBList();
		DBObject findCondition = new BasicDBObject(Constant.KEY_USER_ID, userId)
				.append(Constant.KEY_RECEIVER_ID, receiverId);
		findConditionOr.add(findCondition);

		findCondition = new BasicDBObject(Constant.KEY_USER_ID, receiverId)
				.append(Constant.KEY_RECEIVER_ID, userId);
		findConditionOr.add(findCondition);
		findCondition = new BasicDBObject(Constant.OPERATOR_OR, findConditionOr);

		DBObject sortCondition = new BasicDBObject(Constant.KEY_CREATE_TIME, -1);
		DBCursor cursor = messageCollection.find(findCondition).sort(
				sortCondition).skip(startCount).limit(10);
		DBObject messageObject;
		while (cursor.hasNext()) {
			chatMessage = new ChatMessage();
			messageObject = cursor.next();
			chatMessage.setUserId(messageObject.get(Constant.KEY_USER_ID)
					.toString());
			chatMessage.setReceiverId(messageObject.get(
					Constant.KEY_RECEIVER_ID).toString());
			chatMessage.setContent(messageObject.get(Constant.KEY_CONTENT)
					.toString());
			chatMessage.setCreateTime(messageObject.get(
					Constant.KEY_CREATE_TIME).toString());
			chatMessage.setMessageId(messageObject.get(Constant.OBJECT_ID)
					.toString());
			chatMessage.setStatus(Byte.parseByte(messageObject.get(
					Constant.KEY_STATUS).toString()));
			nearlyMessageList.add(chatMessage);
		}
		if (cursor != null) {
			cursor.close();
		}
		closeMongoClient();
		return nearlyMessageList;
	}

	@Override
	protected void insert(ChatMessage message) {

	}

	@Override
	protected ChatMessage readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void update(ChatMessage oldObject, ChatMessage newObject) {
		// TODO Auto-generated method stub

	}

	@Override
	protected void delete(ChatMessage object) {
		// TODO Auto-generated method stub

	}

	@Override
	protected ChatMessage findDocumentById(String _id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}

}

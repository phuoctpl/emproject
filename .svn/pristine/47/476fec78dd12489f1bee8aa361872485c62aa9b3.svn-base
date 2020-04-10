package com.fudn.em.model.dao;

import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;

import org.bson.types.ObjectId;

import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Notification;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.User;
import com.fudn.em.objParser.IModelConverter;
import com.fudn.em.objParser.MemberConverter;
import com.fudn.em.objParser.NotificationConverter;
import com.fudn.em.objParser.PostConverter;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBObject;

public class UserDAO extends BaseDAO<Member> {

	private IModelConverter<Member> converter;
//	private IModelConverter<Post> postConverter;
	private IModelConverter<Notification> notificationConverter;

	
	public UserDAO() throws UnknownHostException {

		try {
			getMongoClient();
			getDB();
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		getOjbDBCollection("Member");
		converter = new MemberConverter();
		getOjbDBCollection("Notification");
		notificationConverter = new NotificationConverter();
	}
	// insert user to database
	public void insertUser(Member user) {
		BasicDBObject newUser = converter.toDBObject(user);

		getOjbDBCollection("Member").insert(newUser);
		closeMongoClient();
	}

	// get information of user by email

	public Member getInforUserByEmail(String email) {
		try {
			BasicDBObject obj = (BasicDBObject) getOjbDBCollection("Member").find(
					new BasicDBObject("email", email)).next();
			closeMongoClient();
			return converter.toModel(obj);
		} catch (Exception e) {
			return null;
		}
		
	}
	
	public Member getInforUser(String _id) {
		BasicDBObject obj = (BasicDBObject) getOjbDBCollection("Member").find(
				new BasicDBObject("_id", new ObjectId(_id))).next();
		closeMongoClient();
		return converter.toModel(obj);
	}

	// update information of user <<confirm email>>
	public void updateInforUser(Member user, Member userNew) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("active", 1).append("confirmEmail",null));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("email", user.getEmail()).append("confirmEmail", user.getConfirmEmail());
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
	}
	
	
	//insert friend
	public void doAddFriend(String mainUserId, String userId, String state) {
		DBObject listItem = new BasicDBObject("friend", new BasicDBObject("id",userId).append("state",state));
		DBObject updateQuery = new BasicDBObject("$push", listItem);
	
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("_id", new ObjectId(mainUserId));
		getOjbDBCollection("Member").update(searchQuery3, updateQuery);
		closeMongoClient();
	}
	
	//add to notification
	public void addToNotification(Notification notification) {
		BasicDBObject newNotification = notificationConverter.toDBObject(notification);

		getOjbDBCollection("Notification").insert(newNotification);
		closeMongoClient();
		
	}
	
	// accept friend
	public void doAcceptFriend(String mainUserId, String userId, String state) {
		try {
			UserDAO userDAO = new UserDAO();
			userDAO.doAddFriend(mainUserId, userId, state);
			closeMongoClient();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	//remove friend
	public void removeFriend(String mainUserId, String userId) {
		try {
			UserDAO userDAO = new UserDAO();
			BasicDBObject match = new BasicDBObject("_id", new ObjectId(mainUserId)); // to match your document
			BasicDBObject update = new BasicDBObject("friend", new BasicDBObject("id", userId));
			userDAO.getOjbDBCollection("Member").update(match, new BasicDBObject("$pull", update));
			closeMongoClient();
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
//	public void removeOldPending
	
//	public static void main(String[] args) {
//		UserDAO dao;
//		try {
//			dao = new UserDAO();
//			
//			BasicDBObject match = new BasicDBObject("_id", new ObjectId("53c3a7cb176bc41354d73ce0")); // to match your document
//			BasicDBObject update = new BasicDBObject("friend", new BasicDBObject("id", "qu3iz"));
//			dao.getOjbDBCollection("Member").update(match, new BasicDBObject("$pull", update));
//		    
//			System.out.println("done");
//		} catch (UnknownHostException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		 
//	}
	// reset password
	public void resetPassword(Member user) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("passwd", user.getPasswd()));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("email", user.getEmail()).append("confirmEmail", user.getConfirmEmail());
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
	}
	
	public void changePassowrd(Member user) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("passwd", user.getPasswd()));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("_id", new ObjectId(user.get_id()));
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
		
	}
	
	//update confirm email
	public void updateConfirmEmail(Member oldUser, Member user) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append("$set",
				new BasicDBObject().append("confirmEmail",user.getConfirmEmail()));
		
		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("email", user.getEmail());
		
		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();
		
	}

	// edit user
	public void editInforUser(Member user, Member userNew) {
		BasicDBObject updateQuery = new BasicDBObject();
		updateQuery.append(
				"$set",
				new BasicDBObject()
						.append("name", userNew.getName())
						.append("gender", userNew.getGender())
						.append("address", userNew.getAddress())
						.append("country", userNew.getCountry())
						.append("city", userNew.getCity())
						.append("phone", userNew.getPhone())
						.append("musicGenre", userNew.getMusicGenre())
						.append("avatar", userNew.getAvatar())
						.append("description", userNew.getDescription())
						.append("birthDate", userNew.getBirthDate()));

		BasicDBObject searchQuery3 = new BasicDBObject();
		searchQuery3.append("email", user.getEmail());

		getOjbDBCollection("Member").updateMulti(searchQuery3, updateQuery);
		closeMongoClient();

	}
	
	/*
	 * @Override public User readItem(DBObject object) { // TODO Auto-generated
	 * method stub return converter.toModel((BasicDBObject) object); }
	 */

	@Override
	public Member findDocumentById(String _id) {
		BasicDBObject obj = (BasicDBObject) getOjbDBCollection("Member").find(
				new BasicDBObject("_id", _id)).next();
		closeMongoClient();
		return converter.toModel(obj);
	}

	@Override
	public DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return getOjbDBCollection("Member");
	}

	// get profile of user
	public Member getUserProfile(String username) {
		BasicDBObject obj = (BasicDBObject) getOjbDBCollection("Member").find(
				new BasicDBObject("username", username)).next();
		return converter.toModel(obj);
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
	public IModelConverter<Notification> getNotificationConverter() {
		return notificationConverter;
	}
	public void setNotificationConverter(IModelConverter<Notification> notificationConverter) {
		this.notificationConverter = notificationConverter;
	}
	

}

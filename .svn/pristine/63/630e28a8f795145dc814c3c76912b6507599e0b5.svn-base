package com.fudn.em.model.dao;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.common.Constant;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.Admin;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.PostAndUser;
import com.fudn.em.model.bean.Report;
import com.mongodb.AggregationOutput;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.fudn.em.model.bean.GenreAggregation;
import com.fudn.em.objParser.PostConverter;
import com.fudn.em.objParser.ReportConverter;

public class AdminWorkingDAO extends BaseDAO<Admin> {
	private DB project;

	public List<PostAndUser> getListPostAndUser() throws DAOException, ParseException {
		
		List<PostAndUser> postAndUserList = new ArrayList<PostAndUser>();
		PostAndUser postAndUser;
		Date startDate;
		Date endDate;
		Calendar cal = Calendar.getInstance();
		long[] resNum = new long[12];
		long[] postNum = new long[12];
		long num;
		int month;
		int year;

		project = getDB();
		DBCollection member = project.getCollection("Member");

		DBObject user = new BasicDBObject();

		DBCollection post = project.getCollection("Post");

		DBObject postTime = new BasicDBObject();

		cal.setTime(new Date());

		month = cal.get(Calendar.MONTH) + 1;

		year = cal.get(Calendar.YEAR);

		startDate = new SimpleDateFormat(Constant.DATE_FORMAT_INTERNATIONAL)
				.parse( month+"/01"+ "/" + year);

		user.put("enterDate", new BasicDBObject("$gt", startDate));

		num = member.count(user);
		resNum[0] = num;

		postTime.put("postTime", new BasicDBObject("$gt", startDate));
		num = post.count(postTime);
		postNum[0] = num;

		postAndUser = new PostAndUser();

		postAndUser.setNumberOfUser(resNum[0]);
		postAndUser.setNumberOfPost(postNum[0]);
		postAndUser.setTime(startDate);
		
		postAndUserList.add(postAndUser);

		for (int i = 1; i <= 11; i++) {
			month = month - 1;
			if (month == 0) {
				month = 12;
				year = year - 1;
			}
			startDate = new SimpleDateFormat(Constant.DATE_FORMAT_INTERNATIONAL)
					.parse( month+"/01"+ "/" + year);
			month = month + 1;
			if (month == 13) {
				month = 1;
				year = year + 1;
			}
			endDate = new SimpleDateFormat(Constant.DATE_FORMAT_INTERNATIONAL)
					.parse( month+"/01"+ "/" + year);
			user.put("enterDate", new BasicDBObject("$gt", startDate));
			user.put("enterDate", new BasicDBObject("$lt", endDate));


			num = member.count(user);
			resNum[i] = num;

			postTime.put("postTime", new BasicDBObject("$gt", startDate));
			postTime.put("postTime", new BasicDBObject("$lt", endDate));
			num = post.count(postTime);
			postNum[i] = num;
			month = month - 1;
			if (month == 0) {
				month = 12;
				year = year - 1;
			}
			
			System.err.println(resNum[i]);

			postAndUser = new PostAndUser();

			postAndUser.setNumberOfUser(resNum[i]);
			postAndUser.setNumberOfPost(postNum[i]);
			postAndUser.setTime(startDate);
			
			postAndUserList.add(postAndUser);
		}

//		closeMongoClient();
		
		return postAndUserList;
	}

	public List<GenreAggregation> getMusicGenreStatistics() throws DAOException {
		
		project = getDB();
		
		DBCollection genre = project.getCollection("Post");
		
		DBObject groupFields = new BasicDBObject( "_id", "$musicGenre");
		
		groupFields.put("count", new BasicDBObject( "$sum", 1));
	    DBObject group = new BasicDBObject("$group", groupFields );
	    
	    DBObject sortFields = new BasicDBObject("count", -1);
	    DBObject sort = new BasicDBObject("$sort", sortFields );
	    
	    DBObject match = new BasicDBObject("$match", new BasicDBObject( "state", 1));
	    AggregationOutput output = genre.aggregate(match, group, sort);
	    
	    List<GenreAggregation> genreAggregatelist = new ArrayList<GenreAggregation>();
	    GenreAggregation genreAggregate;
	    BasicDBObject basicDBObject;
	    
	    BasicDBList basicDBList = (BasicDBList) output.getCommandResult().get("result");
	    
	    for(int i = 0; i < basicDBList.size(); i++){
	    	genreAggregate = new GenreAggregation();
	    	
	    	basicDBObject = (BasicDBObject) basicDBList.get(i);
	    	genreAggregate.setGenre(basicDBObject.getString("_id"));
	    	genreAggregate.setCount(basicDBObject.getLong("count"));
	    	
	    	genreAggregatelist.add(genreAggregate);
	    }
//	    closeMongoClient();
	    
		return genreAggregatelist;
	}
	
	public List<Report> getListReport() throws Exception{
		List<Report> reportList = new ArrayList<Report>();
		
		project = getDB();
		DBCollection report = project.getCollection("Report");
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		ReportConverter reportConverter = new ReportConverter();

		DBObject ref = new BasicDBObject();
		ref.put("handleTime", null);
		ref.put("admin", null);
		
		DBCursor cursor = report.find(ref);
		DBObject object = null;
		
		while(cursor.hasNext()){
			object = cursor.next();
			reportList.add(reportConverter.toModel((BasicDBObject) object, post, member));
		}

//		closeMongoClient();
		return reportList;
	}
	
	public List<Report> getListReportHandled() throws Exception{
		List<Report> reportList = new ArrayList<Report>();
		
		project = getDB();
		DBCollection report = project.getCollection("Report");
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		ReportConverter reportConverter = new ReportConverter();

		DBObject ref = new BasicDBObject();
		ref.put("handleTime", new BasicDBObject("$ne", null));
		ref.put("admin", new BasicDBObject("$ne", null));
		
		DBCursor cursor = report.find(ref);
		DBObject object = null;
		
		while(cursor.hasNext()){
			object = cursor.next();
			reportList.add(reportConverter.toModel((BasicDBObject) object, post, member));
		}

//		closeMongoClient();
		return reportList;
	}
	
	public void acceptReport(String id, String username) throws Exception {
		String postId;
		String userID;
		
		project = getDB();
		DBCollection report = project.getCollection("Report");
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		BasicDBObject object = (BasicDBObject) report.findOne(new BasicDBObject("_id", new ObjectId(id)));
		postId = object.getString("post");
		post.update(new BasicDBObject().append("_id", new ObjectId(postId)), new BasicDBObject("$set", new BasicDBObject("state", 0)));
		
		object = (BasicDBObject) post.findOne(new BasicDBObject("_id", new ObjectId(postId)));
		userID = object.getString("user");
		member.update(new BasicDBObject().append("_id", new ObjectId(userID)), new BasicDBObject("$set", new BasicDBObject("active", 0)));
		
		BasicDBObject newDocument = new BasicDBObject();
		newDocument.put("admin", username);
		newDocument.put("handleTime", new Date());
	 
		BasicDBObject searchQuery = new BasicDBObject().append("_id", new ObjectId(id));
	 
		report.update(searchQuery, new BasicDBObject("$set",newDocument));
//		closeMongoClient();
	}
	
	public void recoverReport(String id) throws Exception {
		String postId;
		String userID;
		
		project = getDB();
		DBCollection report = project.getCollection("Report");
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		BasicDBObject object = (BasicDBObject) report.findOne(new BasicDBObject("_id", new ObjectId(id)));
		postId = object.getString("post");
		post.update(new BasicDBObject().append("_id", new ObjectId(postId)), new BasicDBObject("$set", new BasicDBObject("state", 1)));
		
		object = (BasicDBObject) post.findOne(new BasicDBObject("_id", new ObjectId(postId)));
		userID = object.getString("user");
		member.update(new BasicDBObject().append("_id", new ObjectId(userID)), new BasicDBObject("$set", new BasicDBObject("active", 1)));
		
		BasicDBObject newDocument = new BasicDBObject();
		newDocument.put("admin", null);
		newDocument.put("handleTime", null);
	 
		BasicDBObject searchQuery = new BasicDBObject().append("_id", new ObjectId(id));
	 
		report.update(searchQuery, new BasicDBObject("$set",newDocument));
//		closeMongoClient();
	}
	
	public String getUserReportedEmail(String reportId) throws Exception{
		
		project = getDB();
		
		DBCollection report = project.getCollection("Report");
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		
		BasicDBObject object1 = (BasicDBObject) report.findOne(new BasicDBObject("_id", new ObjectId(reportId)));
		
		BasicDBObject object2 = (BasicDBObject) post.findOne(new BasicDBObject("_id", new ObjectId(object1.getString("post"))));
		
		String userId = object2.getString("user");
//		closeMongoClient();
		return postConverter.memberToModel(userId, member).getEmail();
	}
	
	public String getUserPostEmail(String postId) throws Exception{
		
		project = getDB();
		
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		
		BasicDBObject object = (BasicDBObject) post.findOne(new BasicDBObject("_id", new ObjectId(postId)));
		
		String userId = object.getString("user");
//		closeMongoClient();
		return postConverter.memberToModel(userId, member).getEmail();
	}

	public Post getPostReported(String id) throws Exception{
		
		project = getDB();
		DBCollection report = project.getCollection("Report");
		DBCollection post = project.getCollection("Post");
		DBCollection member = project.getCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		
		BasicDBObject object = (BasicDBObject) report.findOne(new BasicDBObject("_id", new ObjectId(id)));
		
		object = (BasicDBObject) post.findOne(new BasicDBObject("_id", new ObjectId(object.getString("post"))));
//		closeMongoClient();
		return postConverter.toModel(object, member);
	}
	
	public List<String> getReportComment(String id) throws Exception {
		project = getDB();
		
		List<String> sList = new ArrayList<String>();
		
		DBCollection report = project.getCollection("Report");

		BasicDBObject object = (BasicDBObject) report.findOne(new BasicDBObject("_id", new ObjectId(id)));
		
		BasicDBList objList = (BasicDBList) object.get("comment");
		
		for(int i = 0; i < objList.size(); i++){
			sList.add(objList.get(i).toString());
		}
		
		return sList;
	}
	
	public List<Post> getPostList() throws Exception {
		
		List<Post> postList = new ArrayList<Post>();
		Post post;
		
		project = getDB();
		
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		
		DBCursor cursor = postCollection.find(new BasicDBObject("state", 1));
		DBObject object;
		
		while(cursor.hasNext()){
			object = cursor.next();
			post = postConverter.toModel((BasicDBObject) object, memberCollection);
			
			postList.add(post);
		}
		
		return postList;
	}
	
	public List<Post> getBlockedPostList() throws Exception {
		
		List<Post> postList = new ArrayList<Post>();
		Post post;
		
		project = getDB();
		
		DBCollection postCollection = project.getCollection("Post");
		DBCollection memberCollection = project.getCollection("Member");
		
		PostConverter postConverter = new PostConverter();
		
		DBCursor cursor = postCollection.find(new BasicDBObject("state", 1));
		DBObject object;
		
		while(cursor.hasNext()){
			object = cursor.next();
			post = postConverter.toModel((BasicDBObject) object, memberCollection);
			
			postList.add(post);
		}
		
		return postList;
	}
	
	public void blockPost(String id) throws Exception {
		
		project = getDB();
		DBCollection post = project.getCollection("Post");
		
		post.update(new BasicDBObject().append("_id", new ObjectId(id)), new BasicDBObject("$set", new BasicDBObject("state", 0)));
		
	}
	
	public void unblockPost(String id) throws Exception {
		
		project = getDB();
		DBCollection post = project.getCollection("Post");
		
		post.update(new BasicDBObject().append("_id", new ObjectId(id)), new BasicDBObject("$set", new BasicDBObject("state", 1)));
		
	}
	
	@Override
	protected void insert(Admin object) {
		// TODO Auto-generated method stub

	}

	@Override
	protected Admin readItem(DBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected void update(Admin oldObject, Admin newObject) {
		// TODO Auto-generated method stub

	}

	@Override
	protected void delete(Admin object) {
		// TODO Auto-generated method stub

	}

	@Override
	protected Admin findDocumentById(String _id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	protected DBCollection getDBCollection() {
		// TODO Auto-generated method stub
		return null;
	}

}

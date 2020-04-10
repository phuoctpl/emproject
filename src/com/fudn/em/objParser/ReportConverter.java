package com.fudn.em.objParser;

import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.Report;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;

public class ReportConverter implements IModelConverter<Report> {

	@Override
	public Report toModel(BasicDBObject object) {
		return null;
	}

	@Override
	public BasicDBObject toDBObject(Report model) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public Report toModel(BasicDBObject object, DBCollection postColection, DBCollection memberColection){

		Post post = new Post();
		Report report = new Report();
		String description;
		List<String> decriptionList = new ArrayList<String>();
		
		try{
		
		post = postToModel(object.getString("post"), postColection, memberColection);
		
		if(object.getString("admin")!=null){
			BasicDBObject obj = (BasicDBObject) memberColection.findOne(new BasicDBObject("_id", new ObjectId(object.getString("admin"))));	
			report.setAdmin(obj.getString("name"));
		}
		
		BasicDBList objectList = (BasicDBList) object.get("comment");
		
		for(int i = 0; i < objectList.size(); i++){
			description = objectList.get(i).toString();
			decriptionList.add(description);
		}
		
		report.setId(object.getObjectId("_id").toString());
		report.setPost(post.getTitle());
		report.setPostUser(post.getUser());
		report.setNumberOfView(post.getNumberOfView());
		report.setNumberOfReport(post.getNumberOfReport());
		report.setHandleTime(object.getDate("handleTime"));
		report.setDescription(decriptionList);
		}catch (Exception e) {
			e.printStackTrace();
		}

		return report;
	}
	
	public Post postToModel(String id, DBCollection postColection, DBCollection memberColection){
		
		PostConverter postConverter = new PostConverter();
		BasicDBObject object = new BasicDBObject();
		
		object = (BasicDBObject) postColection.findOne(new BasicDBObject("_id", new ObjectId(id)));
		
		return postConverter.toModel(object, memberColection);
	}

}

package com.fudn.em.objParser;

import java.util.ArrayList;

import org.bson.types.ObjectId;

import com.fudn.em.model.bean.Member;
import com.fudn.em.model.bean.Post;
import com.mongodb.BasicDBObject;

public class UploadConverter implements IModelConverter<Post> {

	@Override
	public Post toModel(BasicDBObject object) {
		Post post = new Post();
		
		post.setId(object.getObjectId("_id").toString());
		post.setTitle(object.getString("title"));
		post.setContent(object.getString("content"));
		post.setImage(object.getString("image"));
		post.setDescription(object.getString("description"));
		post.setState((Integer) (object.get("state")));
		post.setType((Integer) (object.get("type")));
		post.setUserID(object.getString("user"));
		post.setMusicGenre(object.getString("musicGenre"));
		post.setNumberOfView(object.getLong("numberOfViews"));
		post.setNumberOfReport(object.getLong("numberOfReports"));
		post.setRating((float) object.getDouble("rating"));
		post.setNumberOfRating(object.getLong("numberOfRating"));
		post.setPostTime(object.getDate("postTime"));
		
		return post;
	}

	@Override
	public BasicDBObject toDBObject(Post model) {
		
		return new BasicDBObject()
		.append("_id", model.getId())
		.append("title", model.getTitle())
		.append("image", model.getImage())
		.append("description", model.getDescription())
		.append("content", model.getContent())
		.append("type", model.getType())
		.append("user", model.getUser())
		.append("musicGenre", model.getMusicGenre())
		.append("numberOfViews", model.getNumberOfView())
		.append("numberOfReports", model.getNumberOfReport())
		.append("rating", model.getRating())
		.append("numberOfRating", model.getNumberOfRating())
		.append("postTime", model.getPostTime())
		.append("state", model.getState())
		.append("comment", new ArrayList());
	}

}

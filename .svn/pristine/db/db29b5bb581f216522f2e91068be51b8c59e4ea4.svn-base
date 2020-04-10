package com.fudn.em.objParser;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fudn.em.model.bean.Contest;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;

public class ContestConverter implements IModelConverter<Contest>{

	@Override
	public Contest toModel(BasicDBObject object) {
		
		String _id = object.getObjectId("_id").toString();
		String name = object.getString("name");
		String userCreated = object.getString("userCreated");
		String description = object.getString("description");
		String content = object.getString("content");
		Date startDate = (Date) object.getDate("startDate");
		List<String> user = (List<String>) object.get("user");
		double prize = object.getDouble("prize");
		String winner = object.getString("winner");
		String avatar = object.getString("avatar");
		int active = object.getInt("active");
		
		Contest contest = new Contest();
		contest.set_id(_id);
		contest.setName(name);
		contest.setDescription(description);
		contest.setContent(content);
		contest.setStartDate(startDate);
		contest.setUser(user);
		contest.setPrize(prize);
		contest.setWinner(winner);
		contest.setAvatar(avatar);
		contest.setUserCreated(userCreated);
		contest.setActive(active);
		return contest;
	}

	@Override
	public BasicDBObject toDBObject(Contest model) {
		return new BasicDBObject().append("_id", model.get_id())
								  .append("name", model.getName())
								  .append("userCreated", model.getUserCreated())
								  .append("description", model.getDescription())
								  .append("content", model.getContent())
								  .append("startDate", model.getStartDate())
								  .append("user", model.getUser())
								  .append("prize", model.getPrize())
								  .append("winner", model.getWinner())
								  .append("avatar", model.getAvatar())
								  .append("active", model.getActive());
	}

}

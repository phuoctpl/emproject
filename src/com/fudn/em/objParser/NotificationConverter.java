package com.fudn.em.objParser;

import java.util.Date;

import com.fudn.em.model.bean.Notification;
import com.mongodb.BasicDBObject;

public class NotificationConverter implements IModelConverter<Notification> {

	@Override
	public Notification toModel(BasicDBObject object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BasicDBObject toDBObject(Notification model) {
		BasicDBObject object = new BasicDBObject("userInvolveId", model.getUserInvolvedId())
		.append("userCreateId", model.getUserCreateId())
		.append("userCreateName", model.getUserCreateName())
		.append("sortContent", model.getSortContent())
		.append("linkInvolve", model.getLinkInvolve())
		.append("createTime", new Date())
		.append("type", model.getType())
		.append("status", model.getStatus());
		return object;
	}

}

package com.fudn.em.objParser;

import com.mongodb.BasicDBObject;

public interface IModelConverter<T> {
	public T toModel(BasicDBObject object);
	public BasicDBObject toDBObject(T model);
}

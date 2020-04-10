package com.fudn.em.objParser;

import com.fudn.em.model.bean.Member;
import com.mongodb.BasicDBObject;

public class UserConverter implements IModelConverter<Member>{

	@Override
	public Member toModel(BasicDBObject object) {
		String _id = object.getString("_id");
		String email = object.getString("email");
		String name = object.getString("name");
		String image = object.getString("avatar");
		int active = object.getInt("active");
		
		Member member = new Member();
		member.set_id(_id);
		member.setEmail(email);
		member.setName(name);
		member.setAvatar(image);
		member.setActive(active);
		
		return member;
	}

	@Override
	public BasicDBObject toDBObject(Member model) {
		return new BasicDBObject()
					.append("_id", model.get_id())
					.append("email", model.getEmail())
					.append("passwd", model.getPasswd())
					.append("name", model.getName())
					.append("gender", model.getGender())
					.append("address", model.getAddress())
					.append("country", model.getCountry())
					.append("city", model.getCity())
					.append("phone", model.getPhone())
					.append("avatar", model.getAvatar())
					.append("memberRole", model.getMemberRole())
					.append("enterDate", model.getEnterDate())
					.append("prestigePoint", model.getPrestigePoint())
					.append("musicGenre", model.getMusicGenre())
					.append("systemUnit", model.getSystemUnit())
					.append("birthDate", model.getBirthDate())
					.append("active", model.getActive());
	}

}

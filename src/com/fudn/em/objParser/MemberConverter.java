package com.fudn.em.objParser;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fudn.em.model.bean.Friend;
import com.fudn.em.model.bean.Member;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;

public class MemberConverter implements IModelConverter<Member>{

	@Override
	public Member toModel(BasicDBObject object) {
		String _id = object.getObjectId("_id").toString();
		String email = object.getString("email").toString();
		String passwd = object.getString("passwd").toString();
		String name = object.getString("name");
		String gender = object.getString("gender");
		String address = object.getString("address");
		String country = object.getString("country");
		String city = object.getString("city");
		String phone = object.getString("phone");
		String avatar = object.getString("avatar");
		int memberRole = object.getInt("memberRole");
		Date enterDate = (Date) object.getDate("enterDate");
		int prestigePoint = object.getInt("prestigePoint");
		String musicGenre = object.getString("musicGenre");
		String systemUnit = object.getString("systemUnit");
		Date birthDate = (Date) object.getDate("birthDate");
		int active = object.getInt("active");
		String confirmEmail = object.getString("confirmEmail");
		String fbId = object.getString("fbId");
		String description = object.getString("description");
		
		BasicDBList friends = (BasicDBList) object.get("friend");
		BasicDBObject bsobject;
		Friend friend;
		Member member = new Member();
		List<Friend> friends2 = new ArrayList<Friend>();
		
		for(int i=0; i< friends.size();i++){
			bsobject = (BasicDBObject) friends.get(i);
			friend = new Friend();
			friend.setUserId(bsobject.getString("id"));
			friend.setStatus(bsobject.getString("state"));
			
			friends2.add(friend);
		}
		
//		for (int i = 0; i < friends2.size(); i++) {
//			System.out.println(friends2.get(i).getUserId());
//			System.out.println(friends2.get(i).getStatus());
//		}
//		
		member.setFriList(friends2);
		
//		List<Friend> friends = (List<Friend>) object.get("friend");
		
		
		member.set_id(_id);
		member.setEmail(email);
		member.setPasswd(passwd);
		member.setName(name);
		member.setGender(gender);
		member.setAddress(address);
		member.setCountry(country);
		member.setCity(city);
		member.setPhone(phone);
		member.setAvatar(avatar);
		member.setMemberRole(memberRole);
		member.setEnterDate(enterDate);
		member.setPrestigePoint(prestigePoint);
		member.setMusicGenre(musicGenre);
		member.setSystemUnit(systemUnit);
		member.setBirthDate(birthDate);
		member.setActive(active);
		member.setConfirmEmail(confirmEmail);
		member.setFbId(fbId);
		member.setDescription(description);
		
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
					.append("active", model.getActive())
					.append("confirmEmail", model.getConfirmEmail())
					.append("fbId", model.getFbId())
					.append("description", model.getDescription())
					.append("friend", new ArrayList());
	}
	
	

}

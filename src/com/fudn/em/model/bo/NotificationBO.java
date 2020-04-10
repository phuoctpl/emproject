package com.fudn.em.model.bo;

import java.util.List;

import com.fudn.em.model.bean.Notification;
import com.fudn.em.model.dao.NotificationDAO;

public class NotificationBO {
	private NotificationDAO notificationDAO;
	public List<Notification> getAllNotification(String userId){
		notificationDAO = new NotificationDAO();
		return notificationDAO.getAllNotification(userId);
	}
	public int countNewNotification(String userId){
		notificationDAO = new NotificationDAO();
		return notificationDAO.countNewNotification(userId);
	}
}

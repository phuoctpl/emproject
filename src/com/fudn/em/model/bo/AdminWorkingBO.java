package com.fudn.em.model.bo;

import java.text.ParseException;
import java.util.List;

import com.fudn.em.common.EmailUtility;
import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.GenreAggregation;
import com.fudn.em.model.bean.Post;
import com.fudn.em.model.bean.PostAndUser;
import com.fudn.em.model.bean.Report;
import com.fudn.em.model.dao.AdminWorkingDAO;

public class AdminWorkingBO {

	private AdminWorkingDAO adminWorkingDAO = new AdminWorkingDAO();

	public List<PostAndUser> getListPostAndUser() throws DAOException,
			ParseException {
		return adminWorkingDAO.getListPostAndUser();
	}

	public List<GenreAggregation> getMusicGenreStatistics() throws DAOException {
		return adminWorkingDAO.getMusicGenreStatistics();
	}

	public List<Report> getListReport() throws Exception {
		return adminWorkingDAO.getListReport();
	}
	
	public List<Report> getListReportHandled() throws Exception {
		return adminWorkingDAO.getListReportHandled();
	}

	public void acceptReport(String id, String admin, String host, String port,
			String userName, String password) throws Exception {
		
		adminWorkingDAO.acceptReport(id, admin);

		String subject;
		String message;

		subject = "Block Account";
		message = "A post which you public in our website is violated website's Term of Service and Private Policy. " +
				"Please Call: +841687868147 for help!";

		EmailUtility.sendEmail(host, port, userName, password,
				adminWorkingDAO.getUserReportedEmail(id), subject, message);
	}

	public Post getReportDetail(String reportID) {
		return null;
		
	}

	public void recoverReport(String reportID, String host, String port,
			String userName, String password) throws Exception {
		
		adminWorkingDAO.recoverReport(reportID);

		String subject;
		String message;

		subject = "Unblock Account";
		message = "Your account is unblocked. Thank you for using our website";

		EmailUtility.sendEmail(host, port, userName, password,
				adminWorkingDAO.getUserReportedEmail(reportID), subject, message);
	}
	
	public Post getPostReported(String id) throws Exception {
		return adminWorkingDAO.getPostReported(id);
	}
	
	public List<String> getReportComment(String id) throws Exception {
		return adminWorkingDAO.getReportComment(id);
	}
	
	public List<Post> getPostList() throws Exception {
		return adminWorkingDAO.getPostList();
	}
	
	public List<Post> getBlockedPostList() throws Exception {
		return adminWorkingDAO.getBlockedPostList();
	}
	
	public void blockPost(String id, String host, String port,
			String userName, String password) throws Exception {
		adminWorkingDAO.blockPost(id);
		
		String subject;
		String message;

		subject = "Block Post";
		message = "A post which you public in our website is violated website's Term of Service and Private Policy. " +
				"Please Call: +841687868147 for help!";

		EmailUtility.sendEmail(host, port, userName, password,
				adminWorkingDAO.getUserPostEmail(id), subject, message);
	}
	
	public void unblockPost(String id, String host, String port,
			String userName, String password) throws Exception {
		adminWorkingDAO.unblockPost(id);
		
		String subject;
		String message;

		subject = "Unblock Post";
		message = "A post which you public in our website is unblocked. Thank you for using our website";

		EmailUtility.sendEmail(host, port, userName, password,
				adminWorkingDAO.getUserPostEmail(id), subject, message);
	}
}

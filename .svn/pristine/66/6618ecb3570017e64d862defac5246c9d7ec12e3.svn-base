package com.fudn.em.action;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.fudn.em.exception.DAOException;
import com.fudn.em.model.bean.GenreAggregation;
import com.fudn.em.model.bean.PostAndUser;
import com.fudn.em.model.bean.Statistics;
import com.fudn.em.model.bo.AdminBO;
import com.mongodb.DBObject;

public class AdminAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Statistics statistics;
	private List<GenreAggregation> genreAggregationList;
	private List<PostAndUser> postAndUseList;

	public Statistics getStatistics() {
		return statistics;
	}

	public void setStatistics(Statistics statistics) {
		this.statistics = statistics;
	}

	public List<GenreAggregation> getGenreAggregationList() {
		return genreAggregationList;
	}

	public void setGenreAggregationList(List<GenreAggregation> genreAggregationList) {
		this.genreAggregationList = genreAggregationList;
	}

	public List<PostAndUser> getPostAndUseList() {
		return postAndUseList;
	}

	public void setPostAndUseList(List<PostAndUser> postAndUseList) {
		this.postAndUseList = postAndUseList;
	}
	
	public String statistics(){
		
		return SUCCESS;
	}
	public String loadStatisticsData(){
		AdminBO adminBO = new AdminBO();
		System.out.println("start statistics");
		try {
			System.out.println("start try loadStatisticsData");
			postAndUseList = new ArrayList<PostAndUser>();
			setGenreAggregationList(adminBO.getMusicGenreStatistics());
			setPostAndUseList(adminBO.getListPostAndUser());
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return SUCCESS;
	}
}

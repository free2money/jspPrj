package com.ggorrrr.web.controller.service.implement;

import java.util.List;

import com.ggorrrr.web.controller.dao.ReviewDao;
import com.ggorrrr.web.controller.dao.jdbc.JdbcReviewDao;
import com.ggorrrr.web.controller.entity.Review;
import com.ggorrrr.web.controller.service.ReviewService;

public class ImplementReviewService implements ReviewService{
	
	private ReviewDao reviewDao;
	
	public ImplementReviewService() {
		reviewDao=new JdbcReviewDao();
	}
	@Override
	public List<Review> getList() {
	
		return getList("content","");
	}
	
	@Override
	public List<Review> getList(String field, String query) {
		
		return reviewDao.getList(field,query);
	}

	@Override
	public List<Review> orderByDate() {
		
		return reviewDao.orderByDate();
	}

	@Override
	public List<Review> orderByGrade() {
		
		return reviewDao.orderByGrade();
	}

	@Override
	public int insert(Review review) {
		
		return reviewDao.insert(review);
	}

	@Override
	public int update(Review review) {
		
		return reviewDao.update(review);
	}

	@Override
	public int delete(int id) {
		
		return reviewDao.delete(id);
	}

	@Override
	public int deletes(int[] ids) {
		
		return reviewDao.deletes(ids);
	}
	@Override
	public Review get(int review_id) {
	
		return reviewDao.get(review_id);
	}

}

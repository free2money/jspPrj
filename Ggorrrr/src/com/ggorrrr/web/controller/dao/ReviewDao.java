package com.ggorrrr.web.controller.dao;

import java.util.List;

import com.ggorrrr.web.controller.entity.Review;

public interface ReviewDao {
	List<Review> getList();
	List<Review> getList(String field,String query);
	List<Review> orderByDate();

	List<Review> orderByGrade();
	
	int insert(Review review);

	int update(Review review);

	int delete(int id);
	int deletes(int[] ids);
	Review get(int review_id);
}

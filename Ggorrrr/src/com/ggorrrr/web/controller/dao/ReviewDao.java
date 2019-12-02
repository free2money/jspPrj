package com.ggorrrr.web.controller.dao;

import java.util.List;

import com.ggorrrr.web.controller.entity.Review;

public interface ReviewDao {
	List<Review> getList();

	List<Review> getList(String field, String query);

	List<Review> getListByOrder(String order, String field, String query);

	List<Review> getListById(int member_id, String field, String query);

	int insert(Review review);

	int update(Review review);

	int delete(int id);

	Review get(int review_id);
}

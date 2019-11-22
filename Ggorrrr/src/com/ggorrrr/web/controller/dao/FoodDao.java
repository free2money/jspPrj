package com.ggorrrr.web.controller.dao;

import java.util.List;

import com.ggorrrr.web.controller.entity.Food;

public interface FoodDao {
	
	List<Food> getFoodList();
	
	List<Food> getFoodList(String category);

	List<Food> getFoodList(String category, int page);

	List<Food> getFoodList(String category, int page, String field, String query);

	Food get(int id);

	int insert(Food food);

	int update(Food food);

	int delete(int id);

	List<Food> getFoodList(String category, String query);

	int getListCount(String category, String field, String query);
}

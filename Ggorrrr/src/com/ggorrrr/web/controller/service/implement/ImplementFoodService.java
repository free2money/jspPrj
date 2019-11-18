package com.ggorrrr.web.controller.service.implement;

import java.util.List;

import com.ggorrrr.web.controller.dao.FoodDao;
import com.ggorrrr.web.controller.dao.jdbc.JdbcFoodDao;
import com.ggorrrr.web.controller.entity.Food;
import com.ggorrrr.web.controller.service.FoodService;

public class ImplementFoodService implements FoodService {
	
	FoodDao foodDao;
	
	public ImplementFoodService() {
		foodDao = new JdbcFoodDao();
	}

	@Override
	public List<Food> getFoodList(String category) {
		
		return null;
	}

	@Override
	public List<Food> getFoodList(String category, int page) {
		
		return null;
	}

	@Override
	public List<Food> getFoodList(String category, int page, String field, String query) {
		
		return null;
	}

	@Override
	public Food get(int id) {
		
		return null;
	}

	@Override
	public int insert(Food food) {
		
		return foodDao.insert(food);
	}

	@Override
	public int update(Food food) {
		
		return 0;
	}

	@Override
	public int delete(int id) {
		return 0;
	}

	@Override
	public int deletes(int[] ids) {
		return 0;
	}

}

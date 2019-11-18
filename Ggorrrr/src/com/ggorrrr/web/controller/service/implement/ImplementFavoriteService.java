package com.ggorrrr.web.controller.service.implement;

import java.util.List;

import com.ggorrrr.web.controller.dao.FavoriteMenuDao;
import com.ggorrrr.web.controller.dao.jdbc.JdbcFavoriteMenu;
import com.ggorrrr.web.controller.entity.FavoriteMenu;
import com.ggorrrr.web.controller.service.FavoriteService;

public class ImplementFavoriteService implements FavoriteService {
	private FavoriteMenuDao favoriteMenuDao;

	public ImplementFavoriteService() {
		favoriteMenuDao = new JdbcFavoriteMenu();
	}

	@Override
	public List<FavoriteMenu> getList(long member_id) {
		return favoriteMenuDao.getList(member_id);
	}

	@Override
	public int insert(FavoriteMenu favoriteMenu) {
		return favoriteMenuDao.insert(favoriteMenu);
	}

	@Override
	public int delete(FavoriteMenu favoriteMenu) {
		return favoriteMenuDao.delete(favoriteMenu);
	}

	@Override
	public FavoriteMenu get(long food_id) {
		return favoriteMenuDao.get(food_id);
	}

}

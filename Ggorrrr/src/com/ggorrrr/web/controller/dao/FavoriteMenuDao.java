package com.ggorrrr.web.controller.dao;

import java.util.List;

import com.ggorrrr.web.controller.entity.FavoriteMenu;

public interface FavoriteMenuDao {
	// insert, delete(update), select
	int insert(FavoriteMenu favoritemenu);

	int delete(FavoriteMenu favoritemenu);

	List<FavoriteMenu> getList(long member_id);

	FavoriteMenu get(long id);
}

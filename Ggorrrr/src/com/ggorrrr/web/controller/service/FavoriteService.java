package com.ggorrrr.web.controller.service;

import java.util.List;

import com.ggorrrr.web.controller.entity.FavoriteMenu;

public interface FavoriteService {

	List<FavoriteMenu> getList(long member_id);

	int insert(FavoriteMenu favoriteMenu);

	int delete(FavoriteMenu favoriteMenu);

	FavoriteMenu get(long food_id);
}

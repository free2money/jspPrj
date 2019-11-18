package com.ggorrrr.web.controller.dao.jdbc;

import java.util.List;

import com.ggorrrr.web.controller.dao.FavoriteMenuDao;
import com.ggorrrr.web.controller.entity.FavoriteMenu;

public class JdbcFavoriteMenu implements FavoriteMenuDao {

	// 즐겨찾기 등록
	@Override
	public int insert(FavoriteMenu favoritemenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 즐겨찾기 삭제
	@Override
	public int delete(FavoriteMenu favoritemenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// member_id가 즐겨찾기한 목록을 반환
	@Override
	public List<FavoriteMenu> getList(long member_id) {
		List<FavoriteMenu> list = null;

		return list;
	}

	@Override
	public FavoriteMenu get(long id) {
		FavoriteMenu favoriteMenu = null;
		return favoriteMenu;
	}

}

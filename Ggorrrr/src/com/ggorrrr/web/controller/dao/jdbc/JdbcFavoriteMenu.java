package com.ggorrrr.web.controller.dao.jdbc;

import java.util.List;

import com.ggorrrr.web.controller.dao.FavoriteMenuDao;
import com.ggorrrr.web.controller.entity.FavoriteMenu;

public class JdbcFavoriteMenu implements FavoriteMenuDao {

	// ���ã�� ���
	@Override
	public int insert(FavoriteMenu favoritemenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// ���ã�� ����
	@Override
	public int delete(FavoriteMenu favoritemenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// member_id�� ���ã���� ����� ��ȯ
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

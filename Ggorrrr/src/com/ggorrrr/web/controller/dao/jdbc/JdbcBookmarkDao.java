package com.ggorrrr.web.controller.dao.jdbc;

import java.util.List;

import com.ggorrrr.web.controller.dao.BookmarkDao;
import com.ggorrrr.web.controller.entity.BookmarkMenu;

public class JdbcBookmarkDao implements BookmarkDao {

	// ���ã�� ���
	@Override
	public int insert(BookmarkMenu bookmarkMenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// ���ã�� ����
	@Override
	public int delete(BookmarkMenu bookmarkMenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// member_id�� ���ã���� ����� ��ȯ
	@Override
	public List<BookmarkMenu> getList(long member_id) {
		List<BookmarkMenu> list = null;

		return list;
	}

	@Override
	public BookmarkMenu get(long id) {
		BookmarkMenu bookmarkMenu = null;
		return bookmarkMenu;
	}

}

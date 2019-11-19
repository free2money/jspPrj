package com.ggorrrr.web.controller.service.implement;

import java.util.List;

import com.ggorrrr.web.controller.dao.BookmarkDao;
import com.ggorrrr.web.controller.dao.jdbc.JdbcBookmarkDao;
import com.ggorrrr.web.controller.entity.BookmarkMenu;
import com.ggorrrr.web.controller.service.BookmarkService;

public class ImplementBookmarkService implements BookmarkService {
	private BookmarkDao bookmarkDao;

	public ImplementBookmarkService() {
		bookmarkDao = new JdbcBookmarkDao();
	}

	@Override
	public List<BookmarkMenu> getList(long member_id) {
		return bookmarkDao.getList(member_id);
	}

	@Override
	public int insert(BookmarkMenu bookmarkMenu) {
		return bookmarkDao.insert(bookmarkMenu);
	}

	@Override
	public int delete(BookmarkMenu bookmarkMenu) {
		return bookmarkDao.delete(bookmarkMenu);
	}

	@Override
	public BookmarkMenu get(long food_id) {
		return bookmarkDao.get(food_id);
	}

}

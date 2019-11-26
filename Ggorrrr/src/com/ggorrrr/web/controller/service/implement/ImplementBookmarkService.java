package com.ggorrrr.web.controller.service.implement;

import java.util.List;

import com.ggorrrr.web.controller.dao.BookmarkDao;
import com.ggorrrr.web.controller.dao.jdbc.JdbcBookmarkDao;
import com.ggorrrr.web.controller.entity.BookmarkMenu;
import com.ggorrrr.web.controller.entity.Food;
import com.ggorrrr.web.controller.service.BookmarkService;
import com.ggorrrr.web.controller.service.FoodService;

public class ImplementBookmarkService implements BookmarkService {
	private BookmarkDao bookmarkDao;

	public ImplementBookmarkService() {
		bookmarkDao = new JdbcBookmarkDao();
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
	public List<BookmarkMenu> getList(int member_id) {
		return bookmarkDao.getList(member_id);
	}
}

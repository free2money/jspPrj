package com.ggorrrr.web.controller.dao;

import java.util.List;

import com.ggorrrr.web.controller.entity.BookmarkMenu;

public interface BookmarkDao {
	// insert, delete(update), select
	int insert(BookmarkMenu bookmarkMenu);

	int delete(BookmarkMenu bookmarkMenu);

	List<BookmarkMenu> getList(int member_id);

}

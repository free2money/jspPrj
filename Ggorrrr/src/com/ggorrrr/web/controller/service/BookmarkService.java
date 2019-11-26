package com.ggorrrr.web.controller.service;

import java.util.List;

import com.ggorrrr.web.controller.entity.BookmarkMenu;

public interface BookmarkService {

	int insert(BookmarkMenu bookmarkMenu);

	int delete(BookmarkMenu bookmarkMenu);

	List<BookmarkMenu> getList(int member_id);
}

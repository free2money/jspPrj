package com.ggorrrr.web.controller.service;

import java.util.List;

import com.ggorrrr.web.controller.entity.BookmarkMenu;

public interface BookmarkService {

	List<BookmarkMenu> getList(long member_id);

	int insert(BookmarkMenu bookmarkMenu);

	int delete(BookmarkMenu bookmarkMenu);

	BookmarkMenu get(long food_id);
}

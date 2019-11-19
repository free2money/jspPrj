package com.ggorrrr.web.controller.dao.jdbc;

import java.util.List;

import com.ggorrrr.web.controller.dao.BookmarkDao;
import com.ggorrrr.web.controller.entity.BookmarkMenu;

public class JdbcBookmarkDao implements BookmarkDao {

	// 즐겨찾기 등록
	@Override
	public int insert(BookmarkMenu bookmarkMenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 즐겨찾기 삭제
	@Override
	public int delete(BookmarkMenu bookmarkMenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// member_id가 즐겨찾기한 목록을 반환
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

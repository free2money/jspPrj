package com.ggorrrr.web.controller.entity;

public class BookmarkMenu extends Food {
	private long member_id;
	private long food_id;

	public BookmarkMenu() {
	}

	// insert, delete
	public BookmarkMenu(long member_id, long food_id) {
		this.member_id = member_id;
		this.food_id = food_id;
	}

	// selectList
	public BookmarkMenu(int id, String photo, long member_id, String korname) {
		super(korname, photo);
		this.food_id = id;
		this.member_id = member_id;
	}

	// selectDetail
	public BookmarkMenu(int id, String korname, String engname, String photo, String ingridients, String explain,
			int managerId, boolean vegetarian, String thema, String recipe, long member_id) {
		super(id, korname, engname, photo, ingridients, explain, managerId, vegetarian, thema, recipe);
		this.member_id = member_id;
		this.food_id = id;
	}

	public long getMember_id() {
		return member_id;
	}

	public void setMember_id(long member_id) {
		this.member_id = member_id;
	}

	public long getFood_id() {
		return food_id;
	}

	public void setFood_id(long food_id) {
		this.food_id = food_id;
	}

}

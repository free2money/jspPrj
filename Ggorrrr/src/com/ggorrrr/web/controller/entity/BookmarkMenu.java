package com.ggorrrr.web.controller.entity;

public class BookmarkMenu extends Food {
	private int member_id;
	private int food_id;

	public BookmarkMenu() {
	}

	// insert, delete
	public BookmarkMenu(int member_id, int food_id) {
		this.member_id = member_id;
		this.food_id = food_id;
	}

	// selectList
	public BookmarkMenu(int id, String photo, String korname, int member_id) {
		super(korname, photo);
		this.food_id = id;
		this.member_id = member_id;
	}

	// selectDetail
	public BookmarkMenu(int id, String korname, String engname, String photo, String ingridients, String explain,
			int managerId, boolean vegetarian, String thema, String recipe, String category,int price , int member_id) {
		super(id, korname, engname, photo, ingridients, explain, managerId, vegetarian, thema, recipe, category, price);
		this.member_id = member_id;
		this.food_id = id;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public int getFood_id() {
		return food_id;
	}

	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}

	@Override
	public String toString() {
		return "BookmarkMenu [member_id=" + member_id + ", food_id=" + food_id + ", toString()=" + super.toString()
				+ "]";
	}

}

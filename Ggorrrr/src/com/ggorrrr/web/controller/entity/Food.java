package com.ggorrrr.web.controller.entity;

public class Food {
	private int id;
	private String korname;
	private String engname;
	private String photo;
	private String ingridients;
	private String explain;
	private int managerId;
	private boolean vegetarian;
	private String thema;
	private String recipe;

	public Food() {
	}
	
	// insert ����
	public Food(String korname, String engname, String photo, String ingridients, String explain, boolean vegetarian,
			String thema, String recipe) {
		this.korname = korname;
		this.engname = engname;
		this.photo = photo;
		this.ingridients = ingridients;
		this.explain = explain;
		this.vegetarian = vegetarian;
		this.thema = thema;
		this.recipe = recipe;
	}
	
	// select ����
	public Food(int id, String korname, String engname, String photo, String ingridients, String explain, int managerId,
			boolean vegetarian, String thema, String recipe) {
		this.id = id;
		this.korname = korname;
		this.engname = engname;
		this.photo = photo;
		this.ingridients = ingridients;
		this.explain = explain;
		this.managerId = managerId;
		this.vegetarian = vegetarian;
		this.thema = thema;
		this.recipe = recipe;
	}

	public String getRecipe() {
		return recipe;
	}

	public void setRecipe(String recipe) {
		this.recipe = recipe;
	}

	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}
	public String getKorname() {
		return korname;
	}
	public void setKorname(String korname) {
		this.korname = korname;
	}
	public String getEngname() {
		return engname;
	}
	public void setEngname(String engname) {
		this.engname = engname;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getIngridients() {
		return ingridients;
	}
	public void setIngridients(String ingridients) {
		this.ingridients = ingridients;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	public int getManagerId() {
		return managerId;
	}
	public void setManagerId(int managerId) {
		this.managerId = managerId;
	}
	public boolean isVegetarian() {
		return vegetarian;
	}
	public boolean isVegetarian(boolean vegetarian) {
		return this.vegetarian = vegetarian;
	}
	public String getThema() {
		return thema;
	}
	public void setThema(String thema) {
		this.thema = thema;
	}
	@Override
	public String toString() {
		return "Food [id=" + id + ", korname=" + korname + ", engname=" + engname + ", photo=" + photo
				+ ", ingridients=" + ingridients + ", explain=" + explain + ", managerId=" + managerId + ", vegetarian="
				+ vegetarian + ", thema=" + thema + "]";
	}
}

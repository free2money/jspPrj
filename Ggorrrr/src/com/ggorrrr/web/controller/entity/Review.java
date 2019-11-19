package com.ggorrrr.web.controller.entity;

import java.sql.Date;

public class Review {
	private int id;
	private int member_id;
	private	int food_id;

	public int getMember_id() {
		return member_id;
	}
	public int getFood_id() {
		return food_id;
	}

	private	String title;
	private	String address;
	private	String content;
	private Date eating_date;
	private String photo;
	private Date regdate;
	private int rating;
	
	public Review() {
		
	}
	public Review(int id, int member_id, int food_id, String title, String address, String content, Date eating_date,
			String photo, Date regdate, int rating) {
	
		this.id = id;
		this.member_id = member_id;
		this.food_id = food_id;
		this.title = title;
		this.address = address;
		this.content = content;
		this.eating_date = eating_date;
		this.photo = photo;
		this.regdate = regdate;
		this.rating = rating;
	}
	
	public Review(int food_id, String title, String address, String content, Date eating_date, String photo,
			Date regdate, int rating) {
		
		this.food_id = food_id;
		this.title = title;
		this.address = address;
		this.content = content;
		this.eating_date = eating_date;
		this.photo = photo;
		this.regdate = regdate;
		this.rating = rating;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getEating_date() {
		return eating_date;
	}
	public void setEating_date(Date eating_date) {
		this.eating_date = eating_date;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
	@Override
	public String toString() {
		return "Review [id=" + id + ", member_id=" + member_id + ", food_id=" + food_id + ", title=" + title
				+ ", address=" + address + ", content=" + content + ", eating_date=" + eating_date + ", photo=" + photo
				+ ", regdate=" + regdate + ", rating=" + rating + "]";
	}
	
	
	
}
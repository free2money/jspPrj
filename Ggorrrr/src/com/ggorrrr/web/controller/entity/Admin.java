package com.ggorrrr.web.controller.entity;

public class Admin {
	private int adminId;
	private int memberId;
	private String user_id;
	private String pwd;
	private String name;

	public Admin() {
	}

	// admin select
	public Admin(int adminId, int memberId, String user_id, String pwd, String name) {
		this.adminId = adminId;
		this.memberId = memberId;
		this.user_id = user_id;
		this.pwd = pwd;
		this.name = name;
	}

	// insert , delete
	public Admin(int adminId, int memberId) {
		this.adminId = adminId;
		this.memberId = memberId;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", memberId=" + memberId + ", user_id=" + user_id + ", pwd=" + pwd
				+ ", name=" + name + "]";
	}

}

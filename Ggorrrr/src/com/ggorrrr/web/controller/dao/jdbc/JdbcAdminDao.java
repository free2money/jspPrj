package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ggorrrr.web.controller.dao.AdminDao;
import com.ggorrrr.web.controller.entity.Admin;

public class JdbcAdminDao implements AdminDao {

	@Override
	public int insert(int memberId) {
		int result = 0;

		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "INSERT INTO manager (member_id) VALUES(?)";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, memberId);
			result = st.executeUpdate();

			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int delete(int adminId, int memberId) {
		int result = 0;
		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "delete manager where member_id=? and id = ?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, memberId);
			st.setInt(2, adminId);
			result = st.executeUpdate();

			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Admin get(String id) {
		Admin admin = null;
		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "select * from admin where user_id = ?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				admin = new Admin(/**/
						rs.getInt("admin_id"), /**/
						rs.getInt("member_id"), /**/
						id, /**/
						rs.getString("pwd"), /**/
						rs.getString("name"));
			}
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return admin;
	}

}

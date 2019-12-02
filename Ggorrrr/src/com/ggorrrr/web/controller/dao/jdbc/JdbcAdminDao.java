package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ggorrrr.web.controller.dao.AdminDao;
import com.ggorrrr.web.controller.entity.Admin;

public class JdbcAdminDao implements AdminDao {

	@Override
	public int insert(int memberId) {
		int result = 0;
		String sql = "INSERT INTO manager (member_id) VALUES(?)";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, memberId);
			result = st.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null)
					st.close();
				JdbcContext.delCon();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public int delete(int memberId) {
		int result = 0;
		String sql = "delete manager where member_id=?";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, memberId);
			result = st.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null)
					st.close();
				JdbcContext.delCon();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	@Override
	public Admin get(String id) {
		Admin admin = null;
		String sql = "select * from admin where user_id = ?";
		PreparedStatement st = null;
		ResultSet rs = null;

		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setString(1, id);
			rs = st.executeQuery();

			while (rs.next()) {
				admin = new Admin(/**/
						rs.getInt("member_id"), /**/
						id, /**/
						rs.getString("pwd"), /**/
						rs.getString("name"));
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (st != null)
					st.close();
				JdbcContext.delCon();
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
		}
		return admin;
	}
}

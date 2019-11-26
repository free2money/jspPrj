package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ggorrrr.web.controller.dao.ReviewDao;
import com.ggorrrr.web.controller.entity.Review;

public class JdbcReviewDao implements ReviewDao {

	@Override
	public List<Review> getList() {
		return getList("content", "");
	}

	@Override
	public List<Review> getList(String field, String query) {
		List<Review> list = new ArrayList<>();
		String sql = "SELECT * " + "FROM REVIEW " + "WHERE " + field + " LIKE ? " + "ORDER BY REGDATE DESC";

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setString(1, "%" + query + "%");

			rs = st.executeQuery();

			while (rs.next()) {
				Review review = new Review(rs.getInt("id"), rs.getInt("member_id"), rs.getString("address"),
						rs.getString("content"), rs.getDate("eating_date"), rs.getString("photo"),
						rs.getDate("regdate"), rs.getInt("rating"), rs.getString("foodName"), rs.getString("foodType"));

				list.add(review);
			}

			rs.close();
			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					rs.close();
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}

		return list;
	}

	@Override
	public List<Review> orderByDate() {
		List<Review> list = new ArrayList<>();
		String sql = "SELECT * " + "FROM REVIEW " + "ORDER BY REGDATE DESC";

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			rs = st.executeQuery();

			while (rs.next()) {
				Review review = new Review(rs.getInt("id"), rs.getInt("member_id"), rs.getString("address"),
						rs.getString("content"), rs.getDate("eating_date"), rs.getString("photo"),
						rs.getDate("regdate"), rs.getInt("rating"), rs.getString("foodName"), rs.getString("foodType"));

				list.add(review);
			}

			rs.close();
			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					rs.close();
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	@Override
	public List<Review> orderByGrade() {
		List<Review> list = new ArrayList<>();
		String sql = "SELECT * FROM REVIEW ORDER BY RATING DESC";

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			rs = st.executeQuery();

			while (rs.next()) {
				Review review = new Review(rs.getInt("id"), rs.getInt("member_id"), rs.getString("address"),
						rs.getString("content"), rs.getDate("eating_date"), rs.getString("photo"),
						rs.getDate("regdate"), rs.getInt("rating"), rs.getString("foodName"), rs.getString("foodType"));

				list.add(review);
			}

			rs.close();
			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					rs.close();
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return list;
	}

	@Override
	public int insert(Review review) {
		int result = 0;
		String sql = "INSERT INTO REVIEW(ID,MEMBER_ID,ADDRESS, CONTENT, EATING_DATE, PHOTO,FOODNAME,FOODTYPE) "
				+ "VALUES(?,?,?,?,?,?,?,?)";

		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, review.getId());
			st.setInt(2, review.getMember_id());
			st.setString(3, review.getAddress());
			st.setString(4, review.getContent());
			st.setDate(5, review.getEating_date());
			st.setString(6, review.getPhoto());
			st.setString(7, review.getFoodName());
			st.setString(8, review.getFoodType());
			result = st.executeUpdate();

			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return result;
	}

	@Override
	public int update(Review review) {
		int result = 0;
		String sql = "UPDATE REVIEW SET ADDRESS=?, CONTENT=?, EATING_DATE=?, PHOTO=?, REGDATE=?, RATING=? WHERE ID=?";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setString(1, review.getAddress());
			st.setString(2, review.getContent());
			st.setDate(3, review.getEating_date());
			st.setString(4, review.getPhoto());
			st.setDate(5, review.getRegdate());
			st.setInt(6, review.getRating());
			st.setInt(7, review.getId());

			result = st.executeUpdate();

			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return result;
	}

	@Override
	public int delete(int id) {
		int result = 0;
		String sql = "DELETE REVIEW WHERE ID=?";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, id);
			result = st.executeUpdate();

			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return result;
	}

	@Override
	public Review get(int review_id) {
		Review review = null;
		String sql = "SELECT * FROM REVIEW WHERE ID=?";
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, review_id);

			rs = st.executeQuery();

			if (rs.next()) {
				review = new Review(rs.getInt("id"), rs.getInt("member_id"), rs.getString("address"),
						rs.getString("content"), rs.getDate("eating_date"), rs.getString("photo"),
						rs.getDate("regdate"), rs.getInt("rating"), rs.getString("foodName"), rs.getString("foodType"));
			}

			rs.close();
			st.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					rs.close();
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
		return review;
	}

}

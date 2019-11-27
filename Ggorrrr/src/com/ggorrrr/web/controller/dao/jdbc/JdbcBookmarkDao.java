package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ggorrrr.web.controller.dao.BookmarkDao;
import com.ggorrrr.web.controller.entity.BookmarkMenu;

public class JdbcBookmarkDao implements BookmarkDao {

	// 즐겨찾기 등록
	@Override
	public int insert(BookmarkMenu bookmarkMenu) {
		int result = 0;
		String sql = "INSERT INTO BOOKMARK (MEMBER_ID,FOOD_ID) VALUES (?,?)";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, bookmarkMenu.getId());
			st.setInt(2, bookmarkMenu.getMember_id());
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
					JdbcContext.delCon();
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
		}
		return result;
	}

	// 즐겨찾기 삭제
	@Override
	public int delete(int food_id) {
		int result = 0;
		String sql = "DELETE FROM BOOKMARK WHERE FOOD_ID=?";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, food_id);
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
					JdbcContext.delCon();
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
		}
		return result;
	}

	// 즐겨찾기 목록 가져오기
	@Override
	public List<BookmarkMenu> getList(int member_id) {
		List<BookmarkMenu> list = new ArrayList<BookmarkMenu>();
		String sql = "SELECT FOOD_ID, KORNAME, PHOTO FROM BOOKMARK_VIEW WHERE member_ID = ?";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, member_id);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				BookmarkMenu bookmarkView = new BookmarkMenu(/**/
						rs.getInt("food_id"), /**/
						rs.getString("photo"), /**/
						rs.getString("korname"), /**/
						member_id);
				list.add(bookmarkView);
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
					st.close();
					JdbcContext.delCon();
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
		}
		return list;
	}
}

package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
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
		// TODO Auto-generated method stub
		return 0;
	}

	// 즐겨찾기 삭제
	@Override
	public int delete(BookmarkMenu bookmarkMenu) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 즐겨찾기 목록 가져오기
	@Override
	public List<BookmarkMenu> getList(int member_id) {
		List<BookmarkMenu> list = new ArrayList<BookmarkMenu>();

		String url = "jdbc:oracle:thin:@112.223.37.243:1521/xepdb1";
		String sql = "SELECT FOOD_ID, KORNAME, PHOTO FROM BOOKMARK_VIEW WHERE member_ID = ?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, member_id);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				BookmarkMenu bookmarkView = new BookmarkMenu(/**/
						rs.getInt("food_id"), /**/
						rs.getString("photo"), /**/
						rs.getString("korname"), /**/
						member_id);
				System.out.println(bookmarkView.toString());
				list.add(bookmarkView);
			}

			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

	// 즐겨찾기 detail
	@Override
	public BookmarkMenu get(long id) {
		BookmarkMenu bookmarkMenu = null;
		return bookmarkMenu;
	}

}

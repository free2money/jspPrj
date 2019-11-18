package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.ggorrrr.web.controller.dao.FoodDao;
import com.ggorrrr.web.controller.entity.Food;

public class JdbcFoodDao implements FoodDao {

	@Override
	public List<Food> getFoodList(String category) {
		return null;
	}

	@Override
	public List<Food> getFoodList(String category, int page) {
		return null;
	}

	@Override
	public List<Food> getFoodList(String category, int page, String field, String query) {

		return null;
	}

	@Override
	public Food get(int id) {
		Food food = null;

		return food;
	}

	@Override
	public int insert(Food food) {
		int result = 0;
		String sql = "INSERT INTO FOOD(id,KORNAME,ENGNAME,PHOTO,INGRIDIENTS,EXPLAIN,manager_id,RECIPE,VEGETARIAN,THEMA) "
				      + "VALUES(1323,?,?,?,?,?,1,?,?,?)";
		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, food.getKorname());
			st.setString(2, food.getEngname());
			st.setString(3, food.getPhoto());
			st.setString(4, food.getIngridients());
			st.setString(5, food.getExplain());
			st.setString(6, food.getRecipe());
			st.setBoolean(7, food.isVegetarian());
			st.setString(8, food.getThema());
			
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
	public int update(Food food) {
		int result = 0;
		String sql = " UPDATE FOOD SET KORNAME = ?, ENGNAME = ?, PHOTO = ?, INGRIDIENTS = ?, EXPLAIN = ?, RECIPE = ?,VEGETARIAN = ?, THEMA = ? where id = ? ";
		String url = "jdbc:oracle:thin:@112.223.37.243:1521/xepdb1";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "ACORN", "newlec");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, food.getKorname());
			st.setString(2, food.getEngname());
			st.setString(3, food.getPhoto());
			st.setString(4, food.getIngridients());
			st.setString(5, food.getExplain());
			st.setString(6, food.getRecipe());
			st.setBoolean(7, food.isVegetarian());
			st.setString(8, food.getThema());
			st.setInt(9, food.getId());
			
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
	public int delete(int id) {
		int result = 0;
		String url = "jdbc:oracle:thin:@112.223.37.243:1521/xepdb1";
		String sql = "delete from food where id = ? ";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "ACORN", "newlec");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
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
}

package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ggorrrr.web.controller.dao.FoodDao;
import com.ggorrrr.web.controller.entity.Food;

public class JdbcFoodDao implements FoodDao {

	@Override
	public List<Food> getFoodList() {
		return getFoodList("한식", 1, "korname", "");
	}

	@Override
	public List<Food> getFoodList(String category) {
		return getFoodList(category, 1, "korname", "");
	}

	@Override
	public List<Food> getFoodList(String category, String query) {
		return getFoodList(category, 1, "korname", query);
	}

	@Override
	public List<Food> getFoodList(String category, int page) {
		return getFoodList("", page, "korname", "");
	}

	@Override
	public List<Food> getFoodList(String category, int page, String field, String query) {
		List<Food> list = new ArrayList<>();
		Food food = null;
		String category_ = "";

		switch (category) {
		case "한식":
			category_ = "food_kor";
			break;
		case "중식":
			category_ = "food_cha";
			break;
		case "일식":
			category_ = "food_japan";
			break;
		case "양식":
			category_ = "food_usa";
			break;
		case "분식":
			category_ = "food_snack";
			break;
		case "기타":
			category_ = "food_other";
			break;
		case "채식":
			category_ = "food_veget";
			break;
		case "테마별":
			category_ = "food_thema";
			break;
		}

		String sql = "select * from" + "(select rownum num1, n.* " + "from(select * from " + category_ + " where "
				+ field + " like ? order by id desc) n )" + "where num1 between ? and ?";

		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);

			st.setString(1, "%" + query + "%");
			st.setInt(2, (page - 1) * 10 + 1);
			st.setInt(3, page * 10);

			rs = st.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("id");
				String korname = rs.getString("korname");
				String engname = rs.getString("korname");
				String photo = rs.getString("photo");
				String ingridients = rs.getString("ingridients");
				String explain = rs.getString("explain");
				int managerId = rs.getInt("manager_id");
				boolean vegetarian = rs.getBoolean("vegetarian");
				String thema = rs.getString("thema");
				String recipe = rs.getString("recipe");
				int price = rs.getInt("price");

				food = new Food(id, korname, engname, photo, ingridients, explain, managerId, vegetarian, thema, recipe,
						category, price);

				list.add(food);
			}

			rs.close();
			st.close();
			JdbcContext.delCon();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					rs.close();
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

	@Override
	public Food get(int id) {
		Food food = null;
		String sql = "select * from food where id = ? ";
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, id);
			rs = st.executeQuery();

			if (rs.next()) {
				String korname = rs.getString("korname");
				String engname = rs.getString("korname");
				String photo = rs.getString("photo");
				String ingridients = rs.getString("ingridients");
				String explain = rs.getString("explain");
				int managerId = rs.getInt("manager_id");
				boolean vegetarian = rs.getBoolean("vegetarian");
				String thema = rs.getString("thema");
				String recipe = rs.getString("recipe");
				String category = rs.getString("big_category");
				int price = rs.getInt("price");

				food = new Food(id, korname, engname, photo, ingridients, explain, managerId, vegetarian, thema, recipe,
						category, price);
			}
			st.close();
			JdbcContext.delCon();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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
		return food;
	}

	@Override
	public int insert(Food food) {
		int result = 0;
		String sql = "INSERT INTO FOOD(id,KORNAME,ENGNAME,PHOTO,INGRIDIENTS,EXPLAIN,manager_id,RECIPE,VEGETARIAN,THEMA,big_CATEGORY,PRICE) "
				+ "VALUES(13777,?,?,?,?,?,1,?,?,?,?,?)";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setString(1, food.getKorname());
			st.setString(2, food.getEngname());
			st.setString(3, food.getPhoto());
			st.setString(4, food.getIngridients());
			st.setString(5, food.getExplain());
			st.setString(6, food.getRecipe());
			st.setBoolean(7, food.isVegetarian());
			st.setString(8, food.getThema());
			st.setString(9, food.getCategory());
			st.setInt(9, food.getPrice());
			result = st.executeUpdate();

			st.close();
			JdbcContext.delCon();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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

	@Override
	public int update(Food food) {
		int result = 0;
		String sql = " UPDATE FOOD SET KORNAME = ?, ENGNAME = ?, PHOTO = ?, INGRIDIENTS = ?, EXPLAIN = ?, RECIPE = ?,VEGETARIAN = ?, THEMA = ?, PRICE = ? where id = ? ";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setString(1, food.getKorname());
			st.setString(2, food.getEngname());
			st.setString(3, food.getPhoto());
			st.setString(4, food.getIngridients());
			st.setString(5, food.getExplain());
			st.setString(6, food.getRecipe());
			st.setBoolean(7, food.isVegetarian());
			st.setString(8, food.getThema());
			st.setInt(9, food.getPrice());
			st.setInt(10, food.getId());

			result = st.executeUpdate();

			st.close();
			JdbcContext.delCon();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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

	@Override
	public int delete(int id) {
		int result = 0;
		String sql = "delete from food where id = ? ";
		PreparedStatement st = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setInt(1, id);
			result = st.executeUpdate();
			st.close();
			JdbcContext.delCon();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
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

	@Override
	public int getListCount(String category, String field, String query) {
		String category_ = "";
		switch (category) {
		case "한식":
			category_ = "food_kor";
			break;
		case "중식":
			category_ = "food_cha";
			break;
		case "일식":
			category_ = "food_japan";
			break;
		case "양식":
			category_ = "food_usa";
			break;
		case "분식":
			category_ = "food_snack";
			break;
		case "기타":
			category_ = "food_other";
			break;
		case "채식":
			category_ = "food_veget";
			break;
		case "테마별":
			category_ = "food_thema";
			break;
		}
		int count = 0;

		String sql = "select count(id) count " + "from ( select rownum num1 ,n.* from (select * from " + category_
				+ " order by id desc) n) " + "where " + field + " like ?";
		PreparedStatement st = null;
		ResultSet rs = null;
		try {
			st = JdbcContext.getPreparedStatement(sql);
			st.setString(1, "%" + query + "%");
			rs = st.executeQuery();

			if (rs.next())
				;
			count = rs.getInt("count");

			rs.close();
			st.close();
			JdbcContext.delCon();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (st != null)
				try {
					rs.close();
					st.close();
					JdbcContext.delCon();
				} catch (SQLException e) {
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
		}
		return count;
	}

}

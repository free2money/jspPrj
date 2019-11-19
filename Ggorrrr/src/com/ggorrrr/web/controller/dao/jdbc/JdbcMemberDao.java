package com.ggorrrr.web.controller.dao.jdbc;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.ggorrrr.web.controller.dao.MemberDao;
import com.ggorrrr.web.controller.entity.Member;

public class JdbcMemberDao implements MemberDao {

	// ��üȸ������-��üȸ������Ʈ
	@Override
	public List<Member> getMemberList() {

		Member member = null;

		List<Member> list = new ArrayList<Member>();
		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "select * from member";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			while (rs.next()) {

				int id = rs.getInt("id");
				String user_name = rs.getString("user_name");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String birthday = rs.getString("birthday");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String phone = rs.getString("phone");
				String location_agree = rs.getString("location_agree");
				String nickname = rs.getString("nickname");

				member = new Member(id, user_name, pwd, name, birthday, email, gender, phone, location_agree, nickname);
				list.add(member);
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	// ��üȸ������-�˻�
	//�ʵ� -> id, user_id
	@Override
	public List<Member> getMemberList(String field, String query) {

		Member member = null;

		List<Member> list = new ArrayList<Member>();
		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "select * from member where "+field+" like ?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "ACORN", "newlec");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,"%"+query+"%");
		
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				
				int id = rs.getInt("id");
				String user_name = rs.getString("user_name");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String birthday = rs.getString("birthday");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String phone = rs.getString("phone");
				String location_agree = rs.getString("location_agree");
				String nickname = rs.getString("nickname");
				
				member = new Member(id, user_name, pwd, name, birthday, email, gender, phone, location_agree, nickname);
				list.add(member);
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	// ȸ������
	@Override
	public int insert(Member member) {

		int result = 0;

		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?,?,?)";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			// ResultSet rs = st.executeQuery();

			st.setInt(1, member.getId());
			st.setString(2, member.getUser_id());
			st.setString(3, member.getPwd());
			st.setString(4, member.getName());
			st.setString(5, member.getBirthday());
			st.setString(6, member.getEmail());
			st.setString(7, member.getGender());
			st.setString(8, member.getPhone());
			st.setString(9, member.getLocation_agree());
			st.setString(10, member.getNickname());

			result = st.executeUpdate(); // st���� //����Ǹ� 1��ȯ

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

	// �������,�г��Ӻ���,��ġ��������
	@Override
	public int update(Member member) {

		int result = 0;

		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "update member set pwd=?, location_agree=?, nickname=?" + "where id=?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);

			st.setString(1, member.getPwd());
			st.setString(2, member.getLocation_agree());
			st.setString(3, member.getNickname());
			st.setInt(4, member.getId());

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

	// ��üȸ������-����
	@Override
	public int deletes(int[] ids) {

		int result = 0;

		String values = "";
		for (int i = 0; i < ids.length; i++) {
			values += ids[i];

			if (i != (ids.length - 1)) // �������� �ƴ϶��
				values += ",";
		}

		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "delete member where id in(" + values + ")";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "ACORN", "newlec");
			PreparedStatement st = con.prepareStatement(sql);

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

	// ȸ��Ż��
	@Override
	public int delete(int id) {
		int result = 0;

		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "delete member where id=?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
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

	//my�׸�,�α�������,���ã��
	@Override
	public Member get(int id) {
	
		Member member = null;

		String url = "jdbc:oracle:thin:@192.168.0.3:1521/xepdb1";
		String sql = "select * from member where id= ?";

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "GGORRRR", "0112");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);

			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				
				String user_name = rs.getString("user_name");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
				String birthday = rs.getString("birthday");
				String email = rs.getString("email");
				String gender = rs.getString("gender");
				String phone = rs.getString("phone");
				String location_agree = rs.getString("location_agree");
				String nickname = rs.getString("nickname");

				member = new Member(id, user_name, pwd, name, birthday, email, gender, phone, location_agree, nickname);
	
			}

			rs.close();
			st.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
			return member;
	}

	//���Ǹ޴�ã�� MemberView���
	@Override
	public String MyFavorite(int id) {
		// TODO Auto-generated method stub
		return null;
	}

}

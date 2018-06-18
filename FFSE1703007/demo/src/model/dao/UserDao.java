package model.dao;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import model.bean.UserBean;

public class UserDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp" + "?useUnicode=true&characterEncoding=utf-8", "root", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public static int save(UserBean u) throws SQLException {
		int status = 0;
		Connection con = getConnection();
		try {
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement("insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return status;
	}

	public static int update(UserBean u) throws SQLException {
		int status = 0;
		Connection con = getConnection();
		try {
			PreparedStatement ps = (PreparedStatement) con
					.prepareStatement("update register set name=?,password=?,email=?,sex=?,country=? where id=?");
			ps.setString(1, u.getName());
			ps.setString(2, u.getPassword());
			ps.setString(3, u.getEmail());
			ps.setString(4, u.getSex());
			ps.setString(5, u.getCountry());
			ps.setInt(6, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return status;
	}

	public static int delete(UserBean u) throws SQLException {
		int status = 0;
		Connection con = getConnection();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("delete from register where id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}

		return status;
	}

	public static List<UserBean> getAllRecords() throws SQLException {
		List<UserBean> list = new ArrayList<UserBean>();
		Connection con = getConnection();
		try {
			
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from register");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				UserBean u = new UserBean();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return list;
	}

	public static UserBean getRecordById(int id) throws SQLException {
		UserBean u = null;
		Connection con = getConnection();
		try {
			
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from register where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new UserBean();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return u;
	}
	
	public static List<UserBean> getRecords(int start, int total) throws SQLException {
		List<UserBean> list = new ArrayList<UserBean>();
		Connection con = getConnection();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select * from register limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				UserBean u = new UserBean();
				u.setId(rs.getInt("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return list;
	}
	
	public static int countRecords() throws SQLException {
		Connection con = getConnection();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select count(*) from register");
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return 0;
	}
}

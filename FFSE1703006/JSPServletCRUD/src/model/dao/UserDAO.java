package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.bean.User;

public class UserDAO {
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;

	public UserDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		this.jdbcURL = jdbcURL + "?useUnicode=true&characterEncoding=utf-8";
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
	}

	protected void connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
	}

	protected void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}

	public int addUser(User u) {
		int status = 0;
		try {
			connect();
			PreparedStatement ps = jdbcConnection
					.prepareStatement("insert into testcrud(id,name,password,email,sex,country) values(?,?,?,?,?,?)");
			ps.setString(1, u.getId());
			ps.setString(2, u.getName());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getSex());
			ps.setString(6, u.getCountry());
			status = ps.executeUpdate();
			disconnect();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public int updateUser(User u) {
		int status = 0;
		PreparedStatement ps;
		try {
			connect();
			if (u.getPassword().isEmpty()) {
				ps = jdbcConnection.prepareStatement("update testcrud set name=?,email=?,sex=?,country=? where id=?");
				ps.setString(1, u.getName());
				ps.setString(2, u.getEmail());
				ps.setString(3, u.getSex());
				ps.setString(4, u.getCountry());
				ps.setString(5, u.getId());
			} else {
				ps = jdbcConnection
						.prepareStatement("update testcrud set name=?,password=?,email=?,sex=?,country=? where id=?");
				ps.setString(1, u.getName());
				ps.setString(2, u.getPassword());
				ps.setString(3, u.getEmail());
				ps.setString(4, u.getSex());
				ps.setString(5, u.getCountry());
				ps.setString(6, u.getId());
			}
			status = ps.executeUpdate();
			disconnect();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public int deleteUser(String id) {
		int status = 0;
		try {
			connect();
			PreparedStatement ps = jdbcConnection.prepareStatement("delete from testcrud where id=?");
			ps.setString(1, id);
			status = ps.executeUpdate();
			disconnect();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public int countRecords(String search) {
		if (search == null) {
			search = "";
		} else {
			search = " WHERE '" + search + "' IN (id, name, email, sex, country)";
		}
		try {
			connect();
			PreparedStatement ps = jdbcConnection.prepareStatement("select count(*) from testcrud" + search);
			ResultSet rs = ps.executeQuery();
			rs.next();
			int count = rs.getInt("count(*)");
			disconnect();
			return count;
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

	public List<User> getAllRecords() {
		List<User> list = new ArrayList<User>();

		try {
			connect();
			PreparedStatement ps = jdbcConnection.prepareStatement("select * from testcrud");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
			disconnect();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public List<User> getRecords(String search, int start, int total) {
		List<User> list = new ArrayList<User>();
		if (search == null) {
			search = "";
		} else {
			search = " WHERE '" + search + "' IN (id, name, email, sex, country)";
		}
		try {
			connect();
			PreparedStatement ps = jdbcConnection
					.prepareStatement("select * from testcrud " + search + " limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
			disconnect();
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public User getRecordById(String id) {
		User u = null;
		try {
			connect();
			PreparedStatement ps = jdbcConnection.prepareStatement("select * from testcrud where id=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setPassword(rs.getString("password"));
				u.setEmail(rs.getString("email"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
			}
			disconnect();
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
}

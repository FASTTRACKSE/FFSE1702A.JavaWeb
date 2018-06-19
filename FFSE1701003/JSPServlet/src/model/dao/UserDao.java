package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.bean.User;

public class UserDao {

	public int save(User u) throws SQLException {
		int status = 0;
		DbConnection.connect();
		PreparedStatement ps = DbConnection.getConnection()
				.prepareStatement("insert into register(name,password,email,sex,country) values(?,?,?,?,?)");
		ps.setString(1, u.getName());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getSex());
		ps.setString(5, u.getCountry());
		status = ps.executeUpdate();
		ps.close();
		DbConnection.disconnect();
		return status;
	}

	public int update(User u) throws SQLException {
		int status = 0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con
				.prepareStatement("update register set name=?,password=?,email=?,sex=?,country=? where id=?");
		ps.setString(1, u.getName());
		ps.setString(2, u.getPassword());
		ps.setString(3, u.getEmail());
		ps.setString(4, u.getSex());
		ps.setString(5, u.getCountry());
		ps.setInt(6, u.getId());
		status = ps.executeUpdate();

		return status;
	}

	public int delete(User u) throws SQLException {
		int status = 0;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("delete from register where id=?");
		ps.setInt(1, u.getId());
		status = ps.executeUpdate();

		return status;
	}

	public List<User> getAllRecords(String strWhere, String ORDER, int page, int psize) throws SQLException {
		List<User> list = new ArrayList<User>();

		Connection con = DbConnection.getConnection();
		String sql = "";
		int start = page * psize;

		if (!strWhere.equals("")) {
			sql += strWhere;
		}

		if (!ORDER.equals("")) {
			sql += "ORDER BY " + ORDER;
		}

		PreparedStatement ps = con
				.prepareStatement("select * from register " + sql + " limit " + (start) + "," + psize);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			User u = new User();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCountry(rs.getString("country"));
			list.add(u);
		}

		return list;
	}

	public int getCount() throws SQLException {
		int count = 0;

		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select COUNT(*) AS total from register");
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			count = rs.getInt("total");
		}

		return count;
	}

	public User getRecordById(int id) throws SQLException {
		User u = null;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from register where id=?");
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			u = new User();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setSex(rs.getString("sex"));
			u.setCountry(rs.getString("country"));
		}

		return u;
	}

	public List<User> listAllUsers() throws SQLException {
		//System.out.println("kshdkjfhdsk");
		List<User> listUser = new ArrayList<>();

		String sql = "SELECT * FROM user";

		Statement statement = DbConnection.getConnection().createStatement();
		ResultSet resultSet = statement.executeQuery(sql);

		while (resultSet.next()) {
			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String email = resultSet.getString("email");
			String sex = resultSet.getString("sex");
			String country = resultSet.getString("country");

			User user = new User(id, name, email, sex, country);
			listUser.add(user);
		}

		resultSet.close();
		statement.close();

		DbConnection.disconnect();

		return listUser;
	}

	public User getUser(int id) throws SQLException {
		User user = null;
		String sql = "SELECT * FROM user WHERE id = ?";

		DbConnection.connect();

		PreparedStatement statement = DbConnection.getConnection().prepareStatement(sql);
		statement.setInt(1, id);

		ResultSet resultSet = statement.executeQuery();

		if (resultSet.next()) {
			int id1 = resultSet.getInt("id");
			String name = resultSet.getString("title");
			String email = resultSet.getString("email");
			String sex = resultSet.getString("sex");
			String country = resultSet.getString("country");

			user = new User(id1, name, email, sex, country);
		}

		resultSet.close();
		statement.close();

		return user;
	}

	public boolean insertUser(User user) throws SQLException {
		String sql = "INSERT INTO user (name, password, email, sex, country) VALUES (?, ?, ?, ?, ?)";
		DbConnection.connect();
		PreparedStatement statement = DbConnection.getConnection().prepareStatement(sql);
		statement.setString(1, user.getName());
		statement.setString(2, user.getPassword());
		statement.setString(3, user.getEmail());
		statement.setString(4, user.getSex());
		statement.setString(5, user.getCountry());
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		DbConnection.disconnect();
		return rowInserted;
	}

	public boolean deleteUser(User user) throws SQLException {
		String sql = "DELETE FROM user where id = ?";

		DbConnection.connect();

		PreparedStatement statement = DbConnection.getConnection().prepareStatement(sql);
		statement.setInt(1, user.getId());

		boolean rowDeleted = statement.executeUpdate() > 0;
		statement.close();
		DbConnection.disconnect();
		return rowDeleted;
	}

	public boolean updateUser(User user) throws SQLException {
		String sql = "UPDATE user SET name = ?, email = ?, sex = ?, country = ?";
		sql += " WHERE id = ?";
		DbConnection.connect();

		PreparedStatement statement = DbConnection.getConnection().prepareStatement(sql);
		statement.setString(1, user.getName());
		statement.setString(2, user.getEmail());
		statement.setString(3, user.getSex());
		statement.setString(4, user.getCountry());
		statement.setInt(5, user.getId());

		boolean rowUpdated = statement.executeUpdate() > 0;
		statement.close();
		DbConnection.disconnect();
		return rowUpdated;
	}
}
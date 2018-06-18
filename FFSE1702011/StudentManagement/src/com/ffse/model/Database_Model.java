package com.ffse.model;

import java.sql.*;


public class Database_Model {
	Connection conn;
	Statement statement;
	public Database_Model() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/JW_ffse1702011?useUnicode=true&characterEncoding=utf-8", "JW_ffse1702011", "123456");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException se) {
			se.printStackTrace();
		}
	}
	
	public ResultSet getDatabase(String sql) {
		statement = null;
		try {
			statement = conn.createStatement();
			return statement.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean updateData(String sql) {
		statement = null;
		try {
			statement = conn.createStatement();
			return statement.executeUpdate(sql) > 0 ? true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
		
	}

}

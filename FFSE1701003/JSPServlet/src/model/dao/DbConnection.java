package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	private static String jdbcURL="jdbc:mysql://localhost:3306/db_test?useUnicode=yes&characterEncoding=UTF-8";
	private static String jdbcUsername="root";
	private static String jdbcPassword="";
	private static Connection jdbcConnection;
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/db_test?useUnicode=yes&characterEncoding=UTF-8", "root", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	protected static void connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
	}

	protected static void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}
}

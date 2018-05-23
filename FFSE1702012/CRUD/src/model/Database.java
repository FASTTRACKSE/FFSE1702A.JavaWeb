package model;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

public class Database {
	 static Connection conn;
	private PreparedStatement ptmt;
	/*
	 * open connection
	 */
	public Connection openConnect() throws Exception {
		if(conn == null || conn.isClosed())
		{
		Class.forName("com.mysql.jdbc.Driver");
		conn = (Connection) DriverManager.getConnection(
				"jdbc:mysql://localhost/QUANLYDIEN?useUnicode=true&characterEncoding=utf-8", "QUANLYDIEN",
				"123456");
		
		}
		return conn;
	}
	/*
	 * Close connnection
	 */
	public void closeConnect() throws SQLException
	{
		if(conn!=null)
		{
			conn.close();
		}
	}
	/*
	 * SElect data from database
	 */
	public ResultSet getData(String sql) throws Exception
	{	openConnect();
		ResultSet rs = null;
		ptmt = (PreparedStatement) conn.prepareStatement(sql);
		rs = ptmt.executeQuery();
		
		return rs;
	}
	/*
	 * update, xoa, them:
	 */
	public int updateData(String sql) throws Exception
	{
		int kq = 0;
		openConnect();
		ptmt = (PreparedStatement) conn.prepareStatement(sql);
		int kt = ptmt.executeUpdate();
		if(kt>0)
		{
			System.out.println("Xoa thanh cong");
		}
		closeConnect();
		return kq;
	}

}

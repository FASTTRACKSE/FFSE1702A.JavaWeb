package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Driver;

public class Connect {
	private static String strServer = "localhost";
	private static String strDatabase = "quangnc1";
	private static String strUser = "quangnc1";
	private static String strPwd = "abc123";

	public static Connection getConnect() {
		Connection conn = null;
		String strConnect = "jdbc:mysql://" + strServer + "/" + strDatabase
				+ "?useUnicode=true&characterEncoding=utf-8";
		Properties pro = new Properties();
		pro.put("user", strUser);
		pro.put("password", strPwd);
		try {
			com.mysql.jdbc.Driver driver = new Driver();
			conn = (Connection) driver.connect(strConnect, pro);
		} catch (SQLException ex) {
			System.err.println("Kết nối Database thất bại!");
			// ex.printStackTrace();
		}
		return conn;
	}
  public static ArrayList<SinhVien> getAll(){
	  Connection conn = getConnect();
	  String sql = "select * from sinhvien";
	  ArrayList<SinhVien> SV = new ArrayList<SinhVien>();
	  try {
		  PreparedStatement pmt = conn.prepareStatement(sql);
		  ResultSet rs = pmt.executeQuery();
		  while (rs.next()) {
				SinhVien sv = new SinhVien();
				sv.setName(rs.getString(1));
				sv.setName(rs.getString(2));
				sv.setAge(rs.getString(3));
				sv.setCls(rs.getString(4));
				sv.setDress(rs.getString(5));
				sv.setMasv(rs.getString(6));

				SV.add(sv);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return SV;
  }
  static public void insert(SinhVien sv) {
		Connection conn = getConnect();
		String sql = "INSERT INTO `sinhvien`(`masv`, `name`, `age`, `class`, `dress`) VALUES (?,?,?,?,?)";
		try {
			PreparedStatement pmt = conn.prepareStatement(sql);
			pmt.setString(1, sv.getMasv());
			pmt.setString(2, sv.getName());
			pmt.setString(3, sv.getAge());
			pmt.setString(4, sv.getCls());
			pmt.setString(5, sv.getDress());
			pmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
  static public void update(SinhVien sv, String ma) {
		Connection conn = getConnect();
		String sql = "UPDATE `sinhvien` SET  `name`=?,`age`=?,`class`=?,`dress`=? WHERE id=?";
		try {
			PreparedStatement pmt = conn.prepareStatement(sql);
			pmt.setString(1, sv.getName());
			pmt.setString(2, sv.getAge());
			pmt.setString(3, sv.getCls());
			pmt.setString(4, sv.getDress());
			pmt.setString(5, ma);
			pmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
  public static ArrayList<SinhVien> getUpdate(String ma) {
		Connection conn = getConnect();
		String sql = "select * from sinhvien where masv=?";
		ArrayList<SinhVien> SV = new ArrayList<SinhVien>();
		try {
			PreparedStatement pmt = conn.prepareStatement(sql);
			pmt.setString(1, ma);
			ResultSet rs = pmt.executeQuery();
          
			while (rs.next()) {
				SinhVien sv = new SinhVien();
				sv.setName(rs.getString(2));
				sv.setAge(rs.getString(3));
				sv.setCls(rs.getString(4));
				sv.setDress(rs.getString(5));
				sv.setMasv(rs.getString(6));
				SV.add(sv);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return SV;

	}
static public void delete(String ma) {
		Connection conn = getConnect();
		String sql = "DELETE FROM `sinhvien` WHERE masv=?";
		try {
			PreparedStatement pmt = conn.prepareStatement(sql);
			pmt.setString(1, ma);
			pmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}
//public static ArrayList<SinhVien> Display(int start, int count) {
//	Connection conn = getConnect();
//	String sql = "select * from sinhvien limit "+(start-1)+", "+count+"";
//	ArrayList<SinhVien> SV = new ArrayList<SinhVien>();
//	try {
//		PreparedStatement pmt = conn.prepareStatement(sql);
//		ResultSet rs = pmt.executeQuery();
//
//		while (rs.next()) {
//			SinhVien sv = new SinhVien();
//			sv.setName(rs.getString(1));
//			sv.setName(rs.getString(2));
//			sv.setAge(rs.getString(3));
//			sv.setCls(rs.getString(4));
//			sv.setDress(rs.getString(5));
//			sv.setMasv(rs.getString(6));
//
//			SV.add(sv);
//
//		}
//	} catch (Exception e) {
//		// TODO: handle exception
//		e.printStackTrace();
//	}
//	return SV;
//
//}
//public static int Countrow() {
//	Connection conn = getConnect();
//	int count=0;
//	String sql = "select count(*) from sinhvien";
//	
//	try {
//		PreparedStatement pmt = conn.prepareStatement(sql);
//		ResultSet rs = pmt.executeQuery();
//		rs.next();
//		
//		count = rs.getInt(1);
//
//	} catch (Exception e) {
//		// TODO: handle exception
//		e.printStackTrace();
//	}
//	
//	return count;
//}
}

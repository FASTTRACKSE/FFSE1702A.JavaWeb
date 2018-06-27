package model.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;

import model.bean.Users;
import model.until.ConnectUser;

public class UserDao {
	

	public static int addUser(Users u) throws SQLException {
		Connection con = ConnectUser.getConnect();
		int status = 0;
		try {
			PreparedStatement ps = con
					.prepareStatement("insert into student (id,name,year,classroom,sex,country,image) values(?,?,?,?,?,?,?)");
			ps.setString(1, u.getId());
			ps.setString(2, u.getName());
			ps.setString(3, u.getYear());
			ps.setString(4, u.getClassroom());
			ps.setString(5, u.getSex());
			ps.setString(6, u.getCountry());
			ps.setString(7, u.getFile());
			status = ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}
		return status;
	}

	public static int update(Users u) throws SQLException {
		Connection con = ConnectUser.getConnect();
		int status = 0;
		PreparedStatement ps;
		try {
			
				ps = con.prepareStatement("update student set name=?,year=?,classroom=?,sex=?,country=?,image=? where id=?");
				ps.setString(1, u.getName());
				ps.setString(2, u.getYear());
				ps.setString(3, u.getClassroom());
				ps.setString(4, u.getSex());
				ps.setString(5, u.getCountry());
				ps.setString(6, u.getFile());
				ps.setString(7, u.getId());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}
		return status;
	}

	public static int delete(String id)throws SQLException {
		Connection con = ConnectUser.getConnect();
		int status = 0;
		try {
			PreparedStatement ps = con.prepareStatement("delete from student where id=?");
			ps.setString(1, id);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}

		return status;
	}

	public static List<Users> getAllRecords()throws SQLException {
		Connection con = ConnectUser.getConnect();
		List<Users> list = new ArrayList<Users>();

		try {
			PreparedStatement ps = con.prepareStatement("select * from student");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Users u = new Users();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setYear(rs.getString("year"));
				u.setClassroom(rs.getString("classroom"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				u.setFile(rs.getString("image"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}
		return list;
	}
	public static List<Users> getRecords(int start, int total)throws SQLException {
		Connection con = ConnectUser.getConnect();
		List<Users> list = new ArrayList<Users>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from student limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Users u = new Users();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setYear(rs.getString("year"));
				u.setClassroom(rs.getString("classroom"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				u.setFile(rs.getString("image"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}
		return list;
	}
	public static int countRecords()throws SQLException {
		Connection con = ConnectUser.getConnect();
		try {
			PreparedStatement ps = con.prepareStatement("select count(*) from student");
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt("count(*)");
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}
		return 0;
	}
	public static Users getRecordById(String id) throws SQLException{
		Connection con = ConnectUser.getConnect();
		Users u = null;
		try {
			PreparedStatement ps = con.prepareStatement("select * from student where id=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Users();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setYear(rs.getString("year"));
				u.setClassroom(rs.getString("classroom"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				u.setFile(rs.getString("image"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
			con.close();
		}
		return u;
	}
	
}

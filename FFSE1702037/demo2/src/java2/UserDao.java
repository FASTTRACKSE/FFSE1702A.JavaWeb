package java2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

import model.User;
import model.Connect;

public class UserDao {
	private static Connection con = Connect.getConnect();

	public static int add(User u) {
		int status = 0;
		try {
			PreparedStatement ps = con
					.prepareStatement("insert into student (id,name,year,classroom,sex,country) values(?,?,?,?,?,?)");
			ps.setString(1, u.getId());
			ps.setString(2, u.getName());
			ps.setString(3, u.getYear());
			ps.setString(4, u.getClassroom());
			ps.setString(5, u.getSex());
			ps.setString(6, u.getCountry());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(User u) {
		int status = 0;
		PreparedStatement ps;
		try {
			
				ps = con.prepareStatement("update student set name=?,year=?,classroom=?,sex=?,country=? where id=?");
				ps.setString(1, u.getName());
				ps.setString(2, u.getYear());
				ps.setString(3, u.getClassroom());
				ps.setString(4, u.getSex());
				ps.setString(5, u.getCountry());
				ps.setString(6, u.getId());
			
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(String id) {
		int status = 0;
		try {
			PreparedStatement ps = con.prepareStatement("delete from student where id=?");
			ps.setString(1, id);
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<User> getAllRecords() {
		List<User> list = new ArrayList<User>();

		try {
			PreparedStatement ps = con.prepareStatement("select * from student");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setYear(rs.getString("year"));
				u.setClassroom(rs.getString("classroom"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static List<User> getRecords(int start, int total) {
		List<User> list = new ArrayList<User>();
		try {
			PreparedStatement ps = con.prepareStatement("select * from student limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				User u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setYear(rs.getString("year"));
				u.setClassroom(rs.getString("classroom"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	public static int countRecords() {
		try {
			PreparedStatement ps = con.prepareStatement("select count(*) from student");
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt("count(*)");
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	public static User getRecordById(String id) {
		User u = null;
		try {
			PreparedStatement ps = con.prepareStatement("select * from student where id=?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setId(rs.getString("id"));
				u.setName(rs.getString("name"));
				u.setYear(rs.getString("year"));
				u.setClassroom(rs.getString("classroom"));
				u.setSex(rs.getString("sex"));
				u.setCountry(rs.getString("country"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	public Map<String, String> englishLanguage(){
		Map<String, String> map = new HashMap<>();
		map.put("ListUser.TieuDe","User List");
		map.put("ListUser.Name","User Name");
		map.put("ListUser.Year","Year");
		map.put("ListUser.Class","Class");
		map.put("ListUser.Sex","Sex");
		map.put("ListUser.Country","Country");
		map.put("ListUser.Action","Action");
		return map;
		
	}
	public Map<String, String> vietnameseLanguage(){
		Map<String, String> map = new HashMap<>();
		map.put("ListUser.TieuDe","Danh sách");
		map.put("ListUser.Name","Tên");
		map.put("ListUser.Year","Năm sinh");
		map.put("ListUser.Class","Lớp");
		map.put("ListUser.Sex","Giới tính");
		map.put("ListUser.Country","Quốc Tịch");
		map.put("ListUser.Action","Hành động");
		return map;
		
	}
}

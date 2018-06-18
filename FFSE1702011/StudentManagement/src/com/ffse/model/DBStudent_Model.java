package com.ffse.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.mysql.jdbc.PreparedStatement;

public class DBStudent_Model {
	
	Database_Model db;
	public DBStudent_Model() {
		db = new Database_Model();
	}
	
	public List<Student> getListUser(int start, int limit) {
		List<Student> students = new ArrayList<Student>();
		try {
			String sql = "select * from ffse1702011_User limit "+start+", "+limit+"";
			PreparedStatement ps = (PreparedStatement) db.conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Student student = new Student();
				student.setId(rs.getInt("User_ID"));
				student.setMaSV(rs.getString("User_Code"));
				student.setTenSV(rs.getString("User_Name"));
				student.setGioiTinh(rs.getString("Sex"));
				student.setDiaChi(rs.getString("Address"));
				student.setEmail(rs.getString("Email"));
				student.setLop(rs.getString("Class"));
				student.setHinhAnh(rs.getString("Image"));
				students.add(student);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return students;
	}
	
	public int countStudent() {
		String sql = "select count(*) from ffse1702011_User";
		PreparedStatement ps;
		int x = 0;
		try {
			ps = (PreparedStatement) db.conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				x = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	
	public boolean addStudent(Student addStudent) {
		try {
        	String sql = "INSERT INTO ffse1702011_User(User_Code, User_Name, Sex, Address, Email, Class, Image) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = (PreparedStatement) db.conn.prepareStatement(sql);
            ps.setString(1, addStudent.getMaSV());
            ps.setString(2, addStudent.getTenSV());
            ps.setString(3, addStudent.getGioiTinh());
            ps.setString(4, addStudent.getDiaChi());
            ps.setString(5, addStudent.getEmail());
            ps.setString(6, addStudent.getLop());
            ps.setString(7, addStudent.getHinhAnh());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
	}
	
	public Student getUser(int id) {
		Student student = new Student();
        try {
        	String sql = "SELECT * FROM ffse1702011_User WHERE User_ID=?";
            PreparedStatement ps = (PreparedStatement) db.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
				student.setId(rs.getInt("User_ID"));
				student.setMaSV(rs.getString("User_Code"));
				student.setTenSV(rs.getString("User_Name"));
				student.setGioiTinh(rs.getString("Sex"));
				student.setDiaChi(rs.getString("Address"));
				student.setEmail(rs.getString("Email"));
				student.setLop(rs.getString("Class"));
				student.setHinhAnh(rs.getString("Image"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
	}
	
	public boolean editUser(Student editStudent) {
        try {
        	String sql = "UPDATE ffse1702011_User SET User_Code=?, User_Name=?, Address=?, Email=?, Class=? WHERE User_ID=?";
            PreparedStatement ps = (PreparedStatement) db.conn.prepareStatement(sql);
            ps.setString(1, editStudent.getMaSV());
            ps.setString(2, editStudent.getTenSV());
            ps.setString(3, editStudent.getDiaChi());
            ps.setString(4, editStudent.getEmail());
            ps.setString(5, editStudent.getLop());
            ps.setInt(6, editStudent.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
	}
	
	public int delStudent(int id) {
		int x = 0;
		try {
        	String sql = "DELETE FROM `ffse1702011_User` WHERE User_ID = ?";
            PreparedStatement ps = (PreparedStatement) db.conn.prepareStatement(sql);
            ps.setInt(1, id);
            x = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
		return x;
	}
}

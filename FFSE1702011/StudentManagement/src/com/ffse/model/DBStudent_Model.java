package com.ffse.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

public class DBStudent_Model {
	
	Database_Model db;
	public DBStudent_Model() {
		db = new Database_Model();
	}
	
	public List getListUser() {
		List students = new ArrayList();
		try {
			String sql = "select * from ffse1702011_User";
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
				students.add(student);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return students;
	}
	
	public int addUser(String UserCode, String UserName, String sex, String address, String email, String classes) {
		int x = 0;
		try {
			Statement stm = (Statement) db.conn.createStatement();		
			x = stm.executeUpdate("INSERT INTO ffse1702011_User(User_Code, User_Name, Sex, Address, Email, Class) VALUES ('"+UserCode+"', '"+UserName+"', '"+sex+"', '"+address+"', '"+email+"', '"+classes+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
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
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return student;
	}
	
	public void editUser(Student editStudent) {
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
	}
	
	public int delUser(String id) {
		int x = 0;
		try {
			Statement stm = (Statement) db.conn.createStatement();		
			x = stm.executeUpdate("delete from ffse1702011_User where User_ID = '"+id+"'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
}

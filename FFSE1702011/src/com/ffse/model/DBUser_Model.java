package con.ffse.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.mysql.jdbc.Statement;

public class DBUser_Model {
	
	Database_Model db;
	public DBUser_Model() {
		db = new Database_Model();
	}
	
	public ResultSet getListUser() {
		return db.getDatabase("select * from ffse1702011_User");
	}
	
	public int addUser(String userCode, String userName, String sex, String address, String email, String classes) {
		int x = 0;
		try {
			Statement stm = (Statement) db.conn.createStatement();		
			x = stm.executeUpdate("INSERT INTO ffse1702011_User(User_Code, User_Name, Sex, Address, Email, Class) VALUES ('"+userCode+"', '"+userName+"', '"+sex+"', '"+address+"', '"+email+"', '"+classes+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
	
	public ResultSet getUser(String id) {
		return db.getDatabase("select * from ffse1702011_User where User_ID = '"+id+"'");
	}
	
	public int editUser(String userCode, String userName, String address, String email, String classes, String id) {
		int x = 0;
		try {
			Statement stm = (Statement) db.conn.createStatement();		
			x = stm.executeUpdate("UPDATE ffse1702011_User SET User_Code='"+userCode+"',User_Name='"+userName+"',Address='"+address+"',Email='"+email+"',Class='"+classes+"' WHERE User_ID='"+id+"'");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
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

package net.roseindia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jni.User;

import net.roseindia.bean.UserBean;
import net.roseindia.dbconnection.ConnectionProvider;

public class UserDao {

    private static Connection conn;

    public UserDao() {
    	conn = ConnectionProvider.getConnection();
    }

    public void addUser(UserBean userBean) {
        try {
        	String sql = "INSERT INTO users(userid, firstname,lastname,age,gender)" +
    		" VALUES (?, ?, ?, ?, ? )";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, userBean.getId());
            ps.setString(2, userBean.getfName());
            ps.setString(3, userBean.getlName());      
            ps.setInt(4, userBean.getage());
            ps.setString(5, userBean.getgender());
            ps.executeUpdate();
   
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
        	
        }
    }

    public void removeUser(int userId) {
        try {
        	String sql = "DELETE FROM users WHERE userid=?";
            PreparedStatement ps = conn
                    .prepareStatement(sql);
            ps.setInt(1, userId);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
      }

    public void editUser(UserBean userBean) {    	
    	try {
    		String sql = "UPDATE users SET firstname=?, lastname=?, age=?, gender=?" +
            " WHERE userid=?";
            PreparedStatement ps = conn
                    .prepareStatement(sql);
            ps.setString(1, userBean.getfName());
            ps.setString(2, userBean.getlName()); 
            ps.setInt(3, userBean.getage());
            ps.setString(4, userBean.getgender());
            ps.setInt(5, userBean.getId());
            ps.executeUpdate();            

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List getAllUsers() {
        List users = new ArrayList();
        try {
        	String sql = "SELECT * FROM users";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserBean userBean = new UserBean();
                userBean.setId(rs.getInt("userid"));
                userBean.setfName(rs.getString("firstname"));
                userBean.setlName(rs.getString("lastname"));   
                userBean.setage(rs.getInt("age"));
                userBean.setgender(rs.getString("gender"));
                users.add(userBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }
    
    public static List<UserBean> getRecords(int start, int total) {
    	List<UserBean> list = new ArrayList<UserBean>();
    	try {
			PreparedStatement ps = conn.prepareStatement("select * from users limit " + (start - 1) + "," + total);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				 UserBean userBean = new UserBean();
	                userBean.setId(rs.getInt("userid"));
	                userBean.setfName(rs.getString("firstname"));
	                userBean.setlName(rs.getString("lastname"));   
	                userBean.setage(rs.getInt("age"));
	                userBean.setgender(rs.getString("gender"));
	                list.add(userBean);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
    }
    
    public static int countRecords() {
		try {
			PreparedStatement ps = conn.prepareStatement("select count(*) from users");
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt("count(*)");
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}

    public UserBean getUserById(int userId) {
    	UserBean userBean = new UserBean();
        try {
        	String sql = "SELECT * FROM users WHERE userid=?";
            PreparedStatement ps = conn.
                    prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	userBean.setId(rs.getInt("userid"));
            	userBean.setfName(rs.getString("firstname"));
            	userBean.setlName(rs.getString("lastname"));
            	userBean.setage(rs.getInt("age"));
            	userBean.setgender(rs.getString("gender"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userBean;
    }
}
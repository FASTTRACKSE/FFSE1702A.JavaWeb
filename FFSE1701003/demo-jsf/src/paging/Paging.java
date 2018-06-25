package paging;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import bean.UserBean;
@ManagedBean(name = "paging")
@RequestScoped
public class Paging {
	Connection connection;
	int currentpage;
	
	public int getCurrentpage() {
		return currentpage;
	}

	public void setCurrentpage(int currentpage) {
		this.currentpage = currentpage;
	}

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_test", "root", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}

	

	public int getLastpage(int recordPerPage) throws SQLException {
		int numberOfRecords = numberOfRecord();
		
		int lastPage = 0;
		if((numberOfRecords%recordPerPage)==0) {
			lastPage = (numberOfRecords / recordPerPage);
		}else {
			lastPage = (numberOfRecords / recordPerPage)+1;
		}
		return lastPage;
	}

	public int numberOfRecord() throws SQLException {
		Connection con = getConnection();
		try {
			PreparedStatement ps = (PreparedStatement) con.prepareStatement("select count(*) from users");
			ResultSet rs = ps.executeQuery();
			rs.next();
			return rs.getInt("count(*)");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			con.close();
		}
		return 0;
	}
	
	public List<UserBean> getAllRecords(int page, int psize) throws SQLException {
		List<UserBean> list = new ArrayList<UserBean>();

		connection= getConnection();
		String sql = "";
		
		int start = (page-1) * psize;
		if(start<0) {
			start=0;
		}
		

		PreparedStatement ps = (PreparedStatement) connection
				.prepareStatement("select * from users " + sql + " limit " + start + "," + psize);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			UserBean u = new UserBean();
			u.setId(rs.getInt("id"));
			u.setName(rs.getString("name"));
			u.setPassword(rs.getString("password"));
			u.setEmail(rs.getString("email"));
			u.setGender(rs.getString("gender"));
			u.setCountry(rs.getString("country"));
			list.add(u);
		}

		return list;
	}

}

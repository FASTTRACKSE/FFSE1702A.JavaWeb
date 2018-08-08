package qlsv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

@ManagedBean
@SessionScoped
public class User {
	
	int id;
	int page = 0;
	int star = 0;
	String name;
	String email;
	String password;
	String gender;
	String address;
	static int total;
	static Connection connection;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	ArrayList usersList;
	private Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	
	
	// sử dụng kết nối database
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/User?useUnicode=true&characterEncoding=utf-8", "root", "mysql");
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}

	// lấy danh sách sinh viên 
	public ArrayList usersList() {
		try {
			usersList = new ArrayList();
			connection = getConnection();
			Statement stmt = getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from users LIMIT " + star +","+ 2);
			while (rs.next()) {
				User st = new User();
				st.setId(rs.getInt("id"));
				st.setName(rs.getString("name"));
				st.setEmail(rs.getString("email"));
				st.setPassword(rs.getString("password"));
				st.setGender(rs.getString("gender"));
				st.setAddress(rs.getString("address"));
				usersList.add(st);
			}
			connection.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return usersList;
	}
	//get count
		public static void getCount() {
			try {
				connection = getConnection();
				Statement stmt = getConnection().createStatement();
				ResultSet rs = stmt.executeQuery("SELECT COUNT(id) FROM users");
				while (rs.next()) {
					total = rs.getInt(1);
				}
			
				connection.close();
			} catch (Exception e) {
				System.out.println(e);
			}
		}

	private Object getRequest() {
		// TODO Auto-generated method stub
		return null;
	}

	//lấy danh sách sinh viên đầu tiên 
	public void getFistList() {
		page = 0;
		star = 0;
	}
	
	//lấy danh sách sinh viên cuối cùng 
	public void getOverList() {
	    User.getCount();
	    page = total / 2 ;
	    star = page * 2;
	   
	}
	
	//lay danh sach truocw
	public void getPrevPage() {
	  if(page == 0 ) {
		star = 0;  
	  }else {
	    page = page - 1 ;
	    star = page * 2;
	  }
	}
	//lay danh sach sau
	public void getNextPage() {	
		User.getCount();
		if (page >= (total/2) ) {
			page = total / 2 ;
			star = page * 2;
		}else {
	    page = page + 1 ;
	    star = page * 2;
		}
	}
	
	// Used to save user record
	public String save() {
		int result = 0;
		try {
			connection = getConnection();
			PreparedStatement stmt = connection
					.prepareStatement("insert into users(name,email,password,gender,address) values(?,?,?,?,?)");
			stmt.setString(1, name);
			stmt.setString(2, email);
			stmt.setString(3, password);
			stmt.setString(4, gender);
			stmt.setString(5, address);
			result = stmt.executeUpdate();
			connection.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		if (result != 0)
			return "index.xhtml?faces-redirect=true";
		else
			return "create.xhtml?faces-redirect=true";
		
	}

	// Used to fetch record to update
	public String edit(int id) {
		User user = null;
		System.out.println(id);
		try {
			connection = getConnection();
			Statement stmt = getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from users where id = " + (id));
			rs.next();
			user = new User();
			user.setId(rs.getInt("id"));
			user.setName(rs.getString("name"));
			user.setEmail(rs.getString("email"));
			user.setGender(rs.getString("gender"));
			user.setAddress(rs.getString("address"));
			user.setPassword(rs.getString("password"));
			System.out.println(rs.getString("password"));
			sessionMap.put("editUser", user);
			//connection.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return "/edit.xhtml?faces-redirect=true";
	}

	// Used to update user record
	public String update(User u) {
		// int result = 0;
		try {
			connection = getConnection();
			PreparedStatement stmt = connection
					.prepareStatement("update users set name=?,email=?,password=?,gender=?,address=? where id=?");
			stmt.setString(1, u.getName());
			stmt.setString(2, u.getEmail());
			stmt.setString(3, u.getPassword());
			stmt.setString(4, u.getGender());
			stmt.setString(5, u.getAddress());
			stmt.setInt(6, u.getId());
			stmt.executeUpdate();
			connection.close();
		} catch (Exception e) {
			System.out.println();
		}
		return "/index.xhtml?faces-redirect=true";
	}

	// Used to delete user record
	public void delete(int id) {
		try {
			connection = getConnection();
			PreparedStatement stmt = connection.prepareStatement("delete from users where id = " + id);
			stmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	// Used to set user gender
	public String getGenderName(char gender) {
		if (gender == 'M') {
			return "Male";
		} else
			return "Female";
	}
}

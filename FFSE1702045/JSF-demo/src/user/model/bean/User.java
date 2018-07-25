package user.model.bean;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Map;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import user.model.dao.ConnectDB;
import user.pagination.Pagination;

@ManagedBean
@RequestScoped

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@ManagedProperty(value = "#{pagination}")
	private Pagination pagination;
	private List<User> userList;
	private int id;
	private int count = 0;
	private String username;
	private String userfullname;
	private String userpassword;

	public List<User> UserList() {
		return userList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserfullname() {
		return userfullname;
	}

	public void setUserfullname(String userfullname) {
		this.userfullname = userfullname;
	}

	public String getUserpassword() {
		return userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public Map<String, Object> getSessionMap() {
		return sessionMap;
	}

	public void setSessionMap(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public Pagination getPagination() {
		return pagination;
	}

	public void setPagination(Pagination pagination) {
		this.pagination = pagination;
	}

	@PostConstruct

	public void init() {
		int countRecords = getCount();
		pagination.setUserList(countRecords);
		setUserList();
	}

	// Pagination
	public void next() {
		pagination.next();
		setUserList();
	}

	public void prev() {
		pagination.prev();
		setUserList();
	}

	public void firstPage() {
		pagination.firstPage();
		setUserList();
	}

	public void lastPage() {
		pagination.lastPage();
		setUserList();
	}

	public void setUserList() {
		this.userList = getUser(pagination.getFromIndex(), pagination.getRecords());
	}

	private Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

	public String editUser() {
		FacesContext fc = FacesContext.getCurrentInstance();
		Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
		String id = params.get("action");
		try {
			ConnectDB conn = new ConnectDB();
			Connection connection = conn.get_connection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("select * from user where id=" + id);
			User user = new User();
			rs.next();
			user.setId(rs.getInt("id"));
			user.setUsername(rs.getString("username"));
			user.setUserfullname(rs.getString("userfullname"));
			user.setUserpassword(rs.getString("userpassword"));
			sessionMap.put("edituser", user);
		} catch (Exception e) {
			System.out.println(e);
		}
		return "/edit.xhtml?faces-redirect=true";
	}

	public String deleteUser() {
		FacesContext fc = FacesContext.getCurrentInstance();
		Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
		String id = params.get("action");
		try {
			ConnectDB conn = new ConnectDB();
			Connection connection = conn.get_connection();
			PreparedStatement ps = connection.prepareStatement("delete from user where id=?");
			ps.setString(1, id);
			System.out.println(ps);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return "/index.xhtml?faces-redirect=true";
	}

	public String updateUser() {
		FacesContext fc = FacesContext.getCurrentInstance();
		Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
		String id = params.get("update");
		try {
			ConnectDB conn = new ConnectDB();
			Connection connection = conn.get_connection();
			PreparedStatement ps = connection.prepareStatement(
					"UPDATE `admin`.`user` SET `username` = '" + username + "', `userfullname` = '" + userfullname
							+ "', `userpassword` = '" + userpassword + "' WHERE `user`.`id` = '" + id + "';");
			System.out.println(ps);
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return "/index.xhtml?faces-redirect=true";
	}

	public int getCount() {
		Connection connection = null;
		try {
			ConnectDB obj_DB_connection = new ConnectDB();
			connection = obj_DB_connection.get_connection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("SELECT count(id) FROM user");
			while (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("Please check getCount in User");
		}
		return count;
	}

	public List<User> getUser(int fromIndex, int records) {
		List<User> listUser = new ArrayList<User>();
		Connection connection = null;
		try {
			ConnectDB obj_DB_connection = new ConnectDB();
			connection = obj_DB_connection.get_connection();
			Statement st = connection.createStatement();
			ResultSet rs = st.executeQuery("select * from user limit " + (fromIndex) + "," + records);
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setUserfullname(rs.getString("userfullname"));
				user.setUserpassword(rs.getString("userpassword"));
				listUser.add(user);
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			
		}
		return listUser;
	}

	public void addUser() {
		try {
			Connection connection = null;
			ConnectDB conn = new ConnectDB();
			connection = conn.get_connection();
			PreparedStatement ps = connection.prepareStatement(
					"INSERT INTO `admin`.`user` (`id`, `username`, `userfullname`, `userpassword`) VALUES (NULL,'"
							+ username + "','" + userfullname + "','" + userpassword + "');");
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
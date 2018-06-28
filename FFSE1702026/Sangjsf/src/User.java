import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

@ManagedBean(name="user")
@RequestScoped
public class User {
	int id;
	String maKH;
	String name;
	String phone;
	String email;
	String quan;
	ArrayList usersList;
	private Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	Connection connection;

	public User() {
		super();
	}

	public User(int id, String maKH, String name, String phone, String email, String quan, ArrayList usersList,
			Map<String, Object> sessionMap, Connection connection) {
		super();
		this.id = id;
		this.maKH = maKH;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.quan = quan;
		this.usersList = usersList;
		this.sessionMap = sessionMap;
		this.connection = connection;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getQuan() {
		return quan;
	}

	public void setQuan(String quan) {
		this.quan = quan;
	}

	// Used to establish connection
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			connection = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost/dienluc?useUnicode=true&characterEncoding=utf-8", "dienluc", "dienluc");
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;
	}

	// Used to fetch all records
	public ArrayList usersList() {
		try {
			usersList = new ArrayList();
			connection = getConnection();
			Statement stmt = getConnection().createStatement();
			ResultSet rs = stmt.executeQuery("select * from ffse1702026_user");
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setQuan(rs.getString("quan"));
				user.setPhone(rs.getString("phone"));
				user.setMaKH(rs.getString("maKH"));
				usersList.add(user);
			}
			connection.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return usersList;
	}

	// Used to save user record
	public String save() {
		int result = 0;
		try {
			connection = getConnection();
			PreparedStatement stmt = connection.prepareStatement("insert into users(maKH,name,phone,email,quan) values(?,?,?,?,?)");
			stmt.setString(1, maKH);
			stmt.setString(2, name);
			stmt.setString(3, phone);
			stmt.setString(4, email);
			stmt.setString(5, quan);
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
			user.setQuan(rs.getString("quan"));
			user.setPhone(rs.getString("phone"));
			user.setMaKH(rs.getString("maKH"));
	
			sessionMap.put("editUser", user);
			connection.close();
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
			PreparedStatement stmt = connection.prepareStatement("update users set maKH=?,name=?,phone=?,email=?,quan=? where id=?");
			stmt.setString(1, u.getMaKH());
			stmt.setString(2, u.getName());
			stmt.setString(3, u.getPhone());
			stmt.setString(4, u.getEmail());
			stmt.setString(5, u.getQuan());
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
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		User user=new User();
		ArrayList us=user.usersList();
		System.out.println(us.size());
	}

	
}
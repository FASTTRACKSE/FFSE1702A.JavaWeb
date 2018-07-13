package fasttrackse.jspcrud.dao;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import fasttrackse.jspcrud.entity.Student;

@ManagedBean
@RequestScoped
public class StudentDao {
	Connection connection;
	private Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	ArrayList<Student> studentList = new ArrayList<Student>();

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/sinhvien", "lp4",
					"1234");
		} catch (Exception e) {
			System.out.println(e);
		}
		return connection;

	}

	public String addStudent(Student st) throws Exception {
		// add student to dâtbase
		connection = getConnection();
		int result = 0;
		String sql = "insert into student(FirstName,LastName,Email) values(?,?,?)";
		PreparedStatement stmt = connection.prepareStatement(sql);

		stmt.setString(1, st.getFirstName());
		stmt.setString(2, st.getLastName());
		stmt.setString(3, st.getEmail());
		result = stmt.executeUpdate();
		if (result != 0) {
			return "index.xhtml?faces-redirect=true";
		} else {

			return "insert.xhtml?faces-redirect=true";
		}
	}
	public String updateStudent(Student st) throws Exception {
		// add student to dâtbase
		connection = getConnection();
		
		String sql = "update student set FirstName=?,LastName=?,Email=? where id=?";
		PreparedStatement stmt = connection.prepareStatement(sql);

		stmt.setString(1, st.getFirstName());
		stmt.setString(2, st.getLastName());
		stmt.setString(3, st.getEmail());
		stmt.setInt(4, st.getStudentID());
		 stmt.executeUpdate();
		
			return "index.xhtml?faces-redirect=true";
	
	}


	public String getAllByID(int id) throws Exception {
		connection = getConnection();
		Statement stmt = (Statement) getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from student where id=" + id);

		rs.next();
		
		Student st = new Student();
		st.setStudentID(rs.getInt(1));
		st.setFirstName(rs.getString(2));
		st.setLastName(rs.getString(3));
		st.setEmail(rs.getString(4));
		
		sessionMap.put("editST", st);

		return "/edit.xhtml?faces-redirect=true";
	}

	public void deleteStudent(int studentID) throws Exception {

		// dle student to dâtbaseO
		try {
			connection = getConnection();
			PreparedStatement stmt = connection.prepareStatement("delete from student where id = " + studentID);
			stmt.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public ArrayList<Student> getStudentList() throws Exception {
		connection = getConnection();
		Statement stmt = (Statement) getConnection().createStatement();
		ResultSet rs = stmt.executeQuery("select * from student");
		studentList.clear();
		while (rs.next()) {

			int studentID = rs.getInt(1);
			String firstName = rs.getString(2);
			String lastName = rs.getString(3);
			String email = rs.getString(4);
			Student st = new Student(studentID, firstName, lastName, email);

			studentList.add(st);
		}
		return studentList;
	}
	

}

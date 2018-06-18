package student_controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * AbstractDAO.java
 * This DAO class provides CRUD database operations for the table book
 * in the database.
 *
 */
public class StudentDAO {
	private String jdbcURL;
	private String jdbcUsername;
	private String jdbcPassword;
	private Connection jdbcConnection;
	
	public StudentDAO(String jdbcURL, String jdbcUsername, String jdbcPassword) {
		this.jdbcURL = jdbcURL + "?useUnicode=true&characterEncoding=utf-8";
		this.jdbcUsername = jdbcUsername;
		this.jdbcPassword = jdbcPassword;
	}
	
	protected void connect() throws SQLException {
		if (jdbcConnection == null || jdbcConnection.isClosed()) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				throw new SQLException(e);
			}
			jdbcConnection = DriverManager.getConnection(
										jdbcURL, jdbcUsername, jdbcPassword);
		}
	}
	
	protected void disconnect() throws SQLException {
		if (jdbcConnection != null && !jdbcConnection.isClosed()) {
			jdbcConnection.close();
		}
	}
	
	public boolean insertStudent(Student Student) throws SQLException {
		String sql = "INSERT INTO sinhVien (name, old, email,clas ) VALUES (?, ?, ?,?)";
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);

		statement.setString(1, Student.getName());
		statement.setString(2, Student.getOld());
		statement.setString(3, Student.getEmail());
		statement.setString(4, Student.getClas());
		
		boolean rowInserted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowInserted;
	}
	
	public List<Student> listAllStudent() throws SQLException {
		List<Student> listStudent = new ArrayList<>();
		
		String sql = "SELECT * FROM sinhVien";
		
		connect();
		
		Statement statement = jdbcConnection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
		
		while (resultSet.next()) {

			int id = resultSet.getInt("id");
			String name = resultSet.getString("name");
			String old = resultSet.getString("old");
			String email = resultSet.getString("email");
			String clas = resultSet.getString("clas");
			
			Student  Student = new Student(id, name, old, email,clas );
			listStudent.add(Student);
		}
		
		resultSet.close();
		statement.close();
		
		disconnect();
		
		return listStudent;
	}
	//
public ArrayList<Student> getListStudent( int firstResult, int maxResult) throws SQLException {
	ArrayList<Student> list = new ArrayList<>();
        String sql = "SELECT * FROM sinhVien limit ?,?";
		connect();
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, firstResult);
		statement.setInt(2, maxResult);
		ResultSet rs = statement.executeQuery();
        while (rs.next()) {
            Student Student = new Student();
            Student.setId(rs.getInt("id"));
            Student.setName(rs.getString("name"));
            Student.setOld(rs.getString("old"));
            Student.setEmail(rs.getString("email"));
            Student.setClas(rs.getString("clas"));
            list.add(Student);
        }
        return list;
}
	//tinh tong sinh vien 
public int countStudent() throws SQLException  {
	String sql = "SELECT count(id) FROM sinhVien ";
	connect();
	PreparedStatement statement = jdbcConnection.prepareStatement(sql);
	ResultSet rs = statement.executeQuery();
	int count = 0;
    while (rs.next()) {
     count = rs.getInt(1);
    }
    return count;
}

	public boolean deleteStudent(Student Student) throws SQLException {
		String sql = "DELETE FROM sinhVien where id = ?";
		
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, Student.getId());
		
		boolean rowDeleted = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowDeleted;		
	}
	
	
	public boolean updateStudent(Student Student) throws SQLException {
		String sql = "UPDATE sinhVien SET name = ?, old = ?, email = ?,clas = ? ";
		sql += " WHERE id = ?";
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);

		statement.setString(1, Student.getName());
		statement.setString(2, Student.getOld());
		statement.setString(3, Student.getEmail());
		statement.setString(4, Student.getClas());
		statement.setInt(5, Student.getId());
		
		boolean rowUpdated = statement.executeUpdate() > 0;
		statement.close();
		disconnect();
		return rowUpdated;		
	}
	
	public Student getStudent(int id) throws SQLException {
		Student Student = null;
		String sql = "SELECT * FROM sinhVien WHERE id = ?";
		
		connect();
		
		PreparedStatement statement = jdbcConnection.prepareStatement(sql);
		statement.setInt(1, id);
		
		ResultSet resultSet = statement.executeQuery();
		
		if (resultSet.next()) {

			String name = resultSet.getString("name");
			String old = resultSet.getString("old");
			String email = resultSet.getString("email");
			String clas = resultSet.getString("clas");
			
			Student = new Student(id, name, old, email,clas);
		}
		
		resultSet.close();
		statement.close();
		
		return Student;
	}
}

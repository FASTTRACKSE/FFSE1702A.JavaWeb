package fasttrackse.jspcrud.entity;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import fasttrackse.jspcrud.dao.StudentDao;

@ManagedBean
@RequestScoped
public class Student {
     int studentID;
	String firstName;
	String lastName;
	String email;


	public Student() {

	}

	public Student(int studentID, String firstName, String lastName, String email) {
		super();
		this.studentID = studentID;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public Student(String firstName, String lastName, String email) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	public int getStudentID() {
		return studentID;
	}

	public void setStudentID(int studentID) {
		this.studentID = studentID;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String insertST() throws Exception {
		Student st = new Student(firstName, lastName, email);

		StudentDao std = new StudentDao();
		return std.addStudent(st);
	}



}

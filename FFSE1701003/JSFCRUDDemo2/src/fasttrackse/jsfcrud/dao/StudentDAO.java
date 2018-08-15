package fasttrackse.jsfcrud.dao;

import java.util.ArrayList;
import fasttrackse.jsfcrud.entity.Student;

public class StudentDAO {
	public void addStudent(Student st) throws Exception {
		// Add student to Database
	}

	public void updateStudent(Student st) throws Exception {
		// Update student to Database
		System.out.print("Student Updated: " + st.getFirstName() + " " + st.getLastName() + " : "+ st.getEmail());
	}

	public Student readStudent(int studentID) throws Exception {
		// Read student information by ID from Database
		Student st = new Student(studentID, "Nguyễn Văn", "Anh " + studentID, "anh" + studentID + "@fasttrack.edu.vn");

		return st;
	}

	public void delteStudent(int studentID) throws Exception {
		// Delete a student by ID from Database
	}

	public ArrayList<Student> getStudentList() throws Exception {
		ArrayList<Student> studentList = new ArrayList<Student>();

		// Get all student from Student tables
		for (int i = 0; i < 512; i++) {
			studentList
					.add(new Student((i + 1), "Nguyễn Văn", "Anh " + (i + 1), "anh" + (i + 1) + "@fasttrack.edu.vn"));
		}
		// return student result
		return studentList;
	}

	public ArrayList<Student> getStudentList(int pageCurrent, int pageLimit) throws Exception {
		ArrayList<Student> studentList = new ArrayList<Student>();
		
		int indexStart = (pageCurrent - 1) * pageLimit;
		int indexEnd = indexStart + pageLimit;
		if (indexEnd > 512) {
			indexEnd = 512;
		}
		// Get all student from Student tables
		for (int i = indexStart; i < indexEnd; i++) {
			studentList
					.add(new Student((i + 1), "Nguyễn Văn", "Anh " + (i + 1), "anh" + (i + 1) + "@fasttrack.edu.vn"));
		}
		// return student result
		return studentList;
	}

	public int countStudents() throws Exception {
		// Count all student from Database
		return 512;
	}

}

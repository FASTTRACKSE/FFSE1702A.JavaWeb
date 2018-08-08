package JSFcrud.DAO;

import java.util.ArrayList;

import JSFcrud.entity.Student;

public class StudentDao {
	public void addStudent(Student st) throws Exception {
	
	}
	public void editStudent(Student st) throws Exception {
		
	}
	public void deleteStudent(Student st) throws Exception {
		
	}
	public void readStudent(Student st) throws Exception {
		
	}
	
public ArrayList<Student> getStudentList() throws Exception{
	ArrayList<Student> studentList = new ArrayList<Student>();
	studentList.add(new Student(1,"NGUYỄN","2","123@gmail.com"));
	return studentList;
	
}

}

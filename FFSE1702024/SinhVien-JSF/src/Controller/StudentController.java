package Controller;

import java.util.ArrayList;

import javax.annotation.ManagedBean;
import javax.faces.bean.SessionScoped;

import JSFcrud.DAO.StudentDao;
import JSFcrud.entity.Student;
@ManagedBean
@SessionScoped
public class StudentController {
	//private Map<String,Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();   
	StudentDao studentDAO;
	ArrayList<Student> studentList = new ArrayList<Student>();
	
	public ArrayList<Student> getStudentList()throws Exception{
		loadStudent();
		return studentList;
	}
	
	public void setStudentList(ArrayList<Student> studentList) {
		this.studentList = studentList;
	}

	public StudentController() {
		studentList.clear();
		studentDAO = new StudentDao();
	}
	public void loadStudent() throws Exception{
		studentList = studentDAO.getStudentList();
	}

}
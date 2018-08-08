package fasttrackse.jspcrud.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import fasttrackse.jspcrud.dao.StudentDao;
import fasttrackse.jspcrud.entity.Student;

@ManagedBean
@SessionScoped
public class StudentController {
	private Map<String,Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();   
	StudentDao studentDAO = new StudentDao();
	Student st = new Student();
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
		
	}
	public void loadStudent() throws Exception{
		studentList = studentDAO.getStudentList();
	}
	
	
	public void deleteST(int studentID) throws Exception{
		 studentDAO.deleteStudent(studentID);
		
	}
	
	public String delST(int studentID) throws Exception{
		studentDAO.deleteStudent(studentID);
		
		return "/index.xhtml?faces-redirect=true";
	}
	
//	public String update(Student st) throws Exception{  
//		studentDAO.updateStudent(st);
//		return "/index.xhtml?faces-redirect=true";        
//		}  
}

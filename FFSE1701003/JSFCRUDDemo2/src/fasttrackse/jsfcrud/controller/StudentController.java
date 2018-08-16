package fasttrackse.jsfcrud.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

import fasttrackse.jsfcrud.dao.StudentDAO;
import fasttrackse.jsfcrud.entity.Student;

@ManagedBean
@SessionScoped
public class StudentController {
	StudentDAO studentDAO;
	ArrayList<Student> studentList = new ArrayList<Student>();
	private Map<String, Object> sessionMap = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
	int pageCurrent;
	int pageLimit;
	int pageTotal;
	int pageJump;

	public StudentController() {
		studentList.clear();
		studentDAO = new StudentDAO();
		pageCurrent = 1;
		pageTotal = 1;
		pageLimit = 10;
		pageJump = 10;
	}

	public int getPageCurrent() {
		return pageCurrent;
	}

	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}

	public int getPageTotal() {
		return pageTotal;
	}

	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getPageJump() {
		return pageJump;
	}

	public void setPageJump(int pageJump) {
		this.pageJump = pageJump;
	}

	public void goToPage(int page) {
		if (page < 1) {
			page = 1;
		} else if (page > pageTotal) {
			page = pageTotal;
		}

		this.pageCurrent = page;
	}

	public void goFirstPage() {
		pageCurrent = 1;
	}

	public void goLastPage() {
		pageCurrent = pageTotal;
	}

	public void goPrevPage() {
		if (pageCurrent > 1) {
			pageCurrent -= 1;
		}
	}

	public void goNext10Page() {
		if (pageCurrent < pageTotal - 10) {
			pageCurrent += 10;
		} else {
			pageCurrent = pageTotal;
		}
	}

	public void goPrev10Page() {
		if (pageCurrent > 10) {
			pageCurrent -= 10;
		} else {
			pageCurrent = 1;
		}
	}

	public void goNextPage() {
		if (pageCurrent < pageTotal) {
			pageCurrent += 1;
		}
	}

	public ArrayList<Student> getStudentList() throws Exception {
		loadStudents();
		return studentList;
	}
	
	public String createStudent() {
		return "student-create.xhtml";
	}

	public void setStudentList(ArrayList<Student> studentList) {
		this.studentList = studentList;
	}

	public void loadStudents() throws Exception {
		pageTotal = (int) Math.ceil((double) studentDAO.countStudents() / (double) pageLimit);
		studentList = studentDAO.getStudentList(pageCurrent, pageLimit);
	}

	public String readStudent(int studentID) throws Exception {
		Student st = studentDAO.readStudent(studentID);
		sessionMap.put("student", st);

		return "student-info.xhtml?face-redirect=true";
	}
	
	
	public String saveStudent(Student st) throws Exception {
		studentDAO.updateStudent(st);

		return "index.xhtml?face-redirect=true";
	}

}

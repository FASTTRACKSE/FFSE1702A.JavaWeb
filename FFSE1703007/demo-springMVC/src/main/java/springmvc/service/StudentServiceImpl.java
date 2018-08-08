package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springmvc.dao.StudentDAO;
import springmvc.dao.StudentDAOimpl;
import springmvc.entity.Course;
import springmvc.entity.Student;

@Service
@Transactional
public class StudentServiceImpl implements StudentService{
	@Autowired
	StudentDAO studentDAO;
	
	
	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}

	public void create(Student student){
		studentDAO.create(student);
	}
	
	public List<Student> findAll(){
		return studentDAO.findAll();
	}
	
	public Student findById(int id) {
		return studentDAO.findById(id);
	}
	
	public void delete(int id) {
		studentDAO.delete(id);
	}
	
	public List<Course> loadAllCourse(){
		return studentDAO.loadAllCourse();
	}
	
	public void update(Student student) {
		studentDAO.update(student);
	}
	
	public List<Student> findAllForPaging(int startPosition,int maxResult){
		return studentDAO.findAllForPaging(startPosition, maxResult);
	}
}

package com.ffse.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ffse.dao.StudentDAO;
import com.ffse.entities.Student;
import com.ffse.entities.StudentClass;

@Service
public class StudentServiceImpl implements StudentService{
	@Autowired
	private StudentDAO studentDAO;

	@Transactional
	public List<Student> findAll() {
		return studentDAO.findAll();
	}
	public List<Student> getAll(int page){
		return studentDAO.getAll(page);
	}
	public long totalRecords() {
		return studentDAO.totalRecords();
	}
	public void save(Student student) {
		studentDAO.save(student);
	}
	 public Student findById(int id) {
		 return studentDAO.findById(id); 
	 } 
	 public List<StudentClass> listclass(){
		 return studentDAO.listclass();
	 }
	 public void update(Student student) {
		 studentDAO.update(student);
	 }
	 public void delete(int id) {
		 studentDAO.delete(id);
	 }
}

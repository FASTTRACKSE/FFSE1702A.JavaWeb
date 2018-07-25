package com.nguyenxuansang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nguyenxuansang.dao.StudentDAO;
import com.nguyenxuansang.entities.Student;

@Service
public class StudentService{
	@Autowired
	StudentDAO studentDAO;
	public List<Student> getAll(int page){
		return (List<Student>) studentDAO.getAll(page);
	}
	
	public void save(Student student) {
		studentDAO.save(student);
	}
	public Student getById(int id) {
		return studentDAO.getById(id);
	}
	public void delete(int id) {
		studentDAO.delete(id);
	}
	public long countStudent() {
		return studentDAO.countStudent();
	}
}

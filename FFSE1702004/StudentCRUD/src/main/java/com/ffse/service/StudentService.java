package com.ffse.service;

import java.util.List;
import com.ffse.entities.Student;
import com.ffse.entities.StudentClass;

public interface StudentService {
	public List<Student> findAll();
	public List<Student> getAll(int page);
	public long totalRecords();
	public void save(Student student);
	public Student findById(int id);
	public List<StudentClass> listclass();
	public void update(Student student);
	public void delete(int id);
}
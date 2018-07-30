package com.ffse.dao;

import java.util.List;

import com.ffse.entities.Student;
import com.ffse.entities.StudentClass;

public interface StudentDAO {
	public List<Student> findAll();
	public void save(final Student student);
	public Student findById(final int id);
	public List<StudentClass> listclass();
	public void update(final Student student);
	public void delete(final int id );

}
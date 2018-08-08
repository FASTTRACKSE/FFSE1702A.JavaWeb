package com.nguyenxuansang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nguyenxuansang.dao.StudentClassDAO;
import com.nguyenxuansang.entities.StudentClass;
@Service
public class StudentClassService {
	@Autowired
	private StudentClassDAO studentClassDAo;
	public List<StudentClass> getAll(){
		return (List<StudentClass>) studentClassDAo.getAll();
	}
}

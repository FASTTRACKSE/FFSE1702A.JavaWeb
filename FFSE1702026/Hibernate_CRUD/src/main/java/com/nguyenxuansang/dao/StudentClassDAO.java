package com.nguyenxuansang.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nguyenxuansang.entities.StudentClass;

@Repository
@Transactional
public class StudentClassDAO {
	@Autowired
	SessionFactory sessionFactory;
	public List<StudentClass> getAll(){
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from StudentClass",StudentClass.class).list();
		
	}
}

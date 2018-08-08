package com.nguyenxuansang.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nguyenxuansang.entities.Student;


@Repository
@Transactional
public class StudentDAO {
	@Autowired
	SessionFactory sessionFactory;
	public List<Student> getAll(int page){
		Session session=sessionFactory.getCurrentSession();
		Query<Student> query=session.createQuery("from Student",Student.class);
		query.setFirstResult((page-1)*3);
		query.setMaxResults(3);
		return query.list();
	}
	
	public void save(Student student) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(student);
	}
	public Student getById(int id) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(Student.class, id);
	}
	public void delete(int id) {
		Session session=sessionFactory.getCurrentSession();
		Student student=session.get(Student.class, id);
		session.delete(student);
	}
	public long countStudent() {
		Session session=sessionFactory.getCurrentSession();
		Query query =session.createQuery("Select Count (*) from Student");
		return (Long) query.uniqueResult();
	}
}

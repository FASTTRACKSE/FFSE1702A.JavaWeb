package com.tung.sinhvien.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.transaction.annotation.Transactional;

import com.tung.sinhvien.entity.lop;
import com.tung.sinhvien.entity.sinhvien;

@Transactional(rollbackFor = Exception.class)
public class SinhvienDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	public List<sinhvien> getAll(int page) {
	
		Session session = this.sessionFactory.getCurrentSession();
		Query<?> query=session.createQuery("from sinhvien");
		query.setFirstResult((page-1)*3);
		query.setMaxResults(3);
		List<sinhvien> list = (List<sinhvien>) query.list();
		System.out.print(page);
		return list;
	}
	
	public long totalRecords() {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = "SELECT count(*) FROM sinhvien";
		Query<?> query = session.createQuery(queryString); 
		return (Long) query.uniqueResult();
	}
	
	public void create(sinhvien student) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(student);
	}

	

	public sinhvien getById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		sinhvien u = session.get(sinhvien.class, id);
		return u;
	}
	
	public void update(sinhvien student) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(student);
	}
	public void delete(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(getById(id));
	}

	
	
	public List<lop> getLop() {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("unchecked")
		List<lop> list = session.createQuery("from lop").list();
		return list;
	}
}

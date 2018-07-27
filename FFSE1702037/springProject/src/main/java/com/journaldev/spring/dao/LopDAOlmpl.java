package com.journaldev.spring.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Lop;

@Repository
public class LopDAOlmpl implements LopDAO {
	private static final Logger logger = LoggerFactory.getLogger(LopDAOlmpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Lop> listLop() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Lop");
		List<Lop> LopList = query.list();
		for (Lop p : LopList) {
			logger.info("Lop List::" + p);
		}
		return LopList;
	}

	public Lop getLopById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		Lop p = (Lop) session.get(Lop.class, new Integer(id));
		logger.info("Lop loaded successfully, Lop details=" + p);
		return p;
	}
}

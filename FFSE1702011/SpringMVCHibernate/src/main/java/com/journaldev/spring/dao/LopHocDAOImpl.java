package com.journaldev.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.LopHoc;

@Repository
public class LopHocDAOImpl implements LopHocDAO {
	private static final Logger logger = LoggerFactory.getLogger(LopHocDAOImpl.class);

	@Autowired(required=true)
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<LopHoc> listLopHoc() {
		Session session = this.sessionFactory.getCurrentSession();
		List<LopHoc> listLopHoc = session.createQuery("from LopHoc").list();
		for(LopHoc p : listLopHoc){
			logger.info("Person List::"+p);
		}
		return listLopHoc;
	}
}

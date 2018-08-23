package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.FrameworkDao;
import fasttrackse1702a.fbms.quanlyduan.entity.Framework;

@Repository
@Transactional
public class FrameworkDaoImpl implements FrameworkDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(Framework framework) {
		Session session=sessionFactory.getCurrentSession();
		session.save(framework);
		
	}
	@Override
	public Framework getById(String maFramework) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(Framework.class,maFramework);		
	}
	@Override
	public List<Framework> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from Framework where isDelete =0",Framework.class).list();
	}
	@Override
	public void update(Framework framework) {
		Session session=sessionFactory.getCurrentSession();
		session.update(framework);
		
	}
	@Override
	public void delete(String maFramework) {
		Session session=sessionFactory.getCurrentSession();
		Framework fr=session.get(Framework.class,maFramework);
		fr.setIsDelete(1);
		session.update(fr);	
	}
	

}

package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.DatabaseDao;
import fasttrackse1702a.fbms.quanlyduan.entity.Database;

@Repository
@Transactional
public class DatabaseDaoImpl implements DatabaseDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(Database database) {
		Session session=sessionFactory.getCurrentSession();
		session.save(database);
		
	}
	@Override
	public Database getById(String maDatabase) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(Database.class,maDatabase);		
	}
	@Override
	public List<Database> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from Database",Database.class).list();
	}
	@Override
	public void update(Database database) {
		Session session=sessionFactory.getCurrentSession();
		session.update(database);
		
	}
	@Override
	public void delete(String maDatabase) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(session.get(Database.class,maDatabase));	
	}
	

}

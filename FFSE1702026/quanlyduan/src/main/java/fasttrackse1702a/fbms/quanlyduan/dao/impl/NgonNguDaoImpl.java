package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.NgonNguDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NgonNgu;

@Repository
@Transactional
public class NgonNguDaoImpl implements NgonNguDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(NgonNgu ngonNgu) {
		Session session=sessionFactory.getCurrentSession();
		session.save(ngonNgu);
		
	}
	@Override
	public NgonNgu getById(String maNgonNgu) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(NgonNgu.class,maNgonNgu);		
	}
	@Override
	public List<NgonNgu> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from NgonNgu",NgonNgu.class).list();
	}
	@Override
	public void update(NgonNgu ngonNgu) {
		Session session=sessionFactory.getCurrentSession();
		session.update(ngonNgu);
		
	}
	@Override
	public void delete(String maNgonNgu) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(session.get(NgonNgu.class,maNgonNgu));	
	}
	

}

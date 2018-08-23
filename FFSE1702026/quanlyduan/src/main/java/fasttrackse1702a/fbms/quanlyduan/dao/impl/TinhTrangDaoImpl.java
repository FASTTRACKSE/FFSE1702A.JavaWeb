package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.TinhTrangDao;
import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;


@Repository
@Transactional
public class TinhTrangDaoImpl implements TinhTrangDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(TinhTrang tinhTrang) {
		Session session=sessionFactory.getCurrentSession();
		session.save(tinhTrang);
		
	}
	@Override
	public TinhTrang getById(String maTinhTrang) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(TinhTrang.class,maTinhTrang);		
	}
	@Override
	public List<TinhTrang> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from TinhTrang where isDelete =0",TinhTrang.class).list();
	}
	@Override
	public void update(TinhTrang tinhTrang) {
		Session session=sessionFactory.getCurrentSession();
		session.update(tinhTrang);
		
	}
	@Override
	public void delete(String maTinhTrang) {
		Session session=sessionFactory.getCurrentSession();
		TinhTrang tinhTrang=session.get(TinhTrang.class,maTinhTrang);
		tinhTrang.setIsDelete(1);
		session.update(tinhTrang);	
	}
	

}
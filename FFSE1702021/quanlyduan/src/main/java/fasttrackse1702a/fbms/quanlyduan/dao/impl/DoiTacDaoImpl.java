package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.DoiTacDao;
import fasttrackse1702a.fbms.quanlyduan.entity.DoiTac;

@Repository
@Transactional
public class DoiTacDaoImpl implements DoiTacDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(DoiTac doiTac) {
		Session session=sessionFactory.getCurrentSession();
		session.save(doiTac);
		
	}
	@Override
	public DoiTac getById(String maDoiTac) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(DoiTac.class,maDoiTac);		
	}
	@Override
	public List<DoiTac> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from DoiTac where isDelete =0",DoiTac.class).list();
	}
	@Override
	public void update(DoiTac doiTac) {
		Session session=sessionFactory.getCurrentSession();
		session.update(doiTac);
		
	}
	@Override
	public void delete(String maDoiTac) {
		Session session=sessionFactory.getCurrentSession();
		DoiTac doitac=session.get(DoiTac.class,maDoiTac);
		doitac.setIsDelete(1);
		session.update(doitac);	
	}
	

}
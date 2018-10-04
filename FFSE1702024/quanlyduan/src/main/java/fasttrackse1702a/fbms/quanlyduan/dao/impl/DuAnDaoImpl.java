package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.DuAnDao;
import fasttrackse1702a.fbms.quanlyduan.entity.DuAn;

@Transactional
@Repository
public class DuAnDaoImpl implements DuAnDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Override
	public void save(DuAn duAn) {
		Session session=sessionFactory.getCurrentSession();
		session.save(duAn);
		
	}

	@Override
	public DuAn getById(int maDuAn) {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from DuAn where  maDuAn ="+maDuAn,DuAn.class).getSingleResult();
	}

	@Override
	public List<DuAn> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from DuAn where isDelete =0",DuAn.class).list();
	}

	@Override
	public void update(DuAn duAn) {
		Session session=sessionFactory.getCurrentSession();
		session.update(duAn);
		
	}

	@Override
	public void delete(String maDuAn) {
		Session session=sessionFactory.getCurrentSession();
		DuAn duan=session.get(DuAn.class,maDuAn);	
		duan.setIsDelete(1);
		session.update(duan);	
		
	}

}

package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.DuAnTruongPhongDao;
import fasttrackse1702a.fbms.quanlyduan.entity.DuAnTruongPhong;

@Transactional
@Repository
public class DuAnTruongPhongDaoImpl implements DuAnTruongPhongDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(DuAnTruongPhong duAn) {
		Session session=sessionFactory.getCurrentSession();
		session.save(duAn);
		
	}

}

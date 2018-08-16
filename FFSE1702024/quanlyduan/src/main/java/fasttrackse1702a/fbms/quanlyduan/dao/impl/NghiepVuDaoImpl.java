package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.NghiepVuDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NghiepVu;

@Repository
@Transactional
public class NghiepVuDaoImpl implements NghiepVuDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(NghiepVu nghiepVu) {
		Session session=sessionFactory.getCurrentSession();
		session.save(nghiepVu);
		
	}
	@Override
	public NghiepVu getById(String maNghiepVu) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(NghiepVu.class,maNghiepVu);		
	}
	@Override
	public List<NghiepVu> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from NghiepVu",NghiepVu.class).list();
	}
	@Override
	public void update(NghiepVu nghiepVu) {
		Session session=sessionFactory.getCurrentSession();
		session.update(nghiepVu);
		
	}
	@Override
	public void delete(String maNghiepVu) {
		Session session=sessionFactory.getCurrentSession();
		NghiepVu fr=session.get(NghiepVu.class,maNghiepVu);
		fr.setIsDelete(1);
		session.update(fr);	
	}
	

}

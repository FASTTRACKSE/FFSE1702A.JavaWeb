package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.NhiemVuDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;

@Repository
@Transactional
public class NhiemVuDaoImpl implements NhiemVuDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void save(NhiemVu nhiemVu) {
		Session session= sessionFactory.getCurrentSession();
		session.save(nhiemVu);
		
	}

	@Override
	public void update(NhiemVu nhiemVu) {
		Session session= sessionFactory.getCurrentSession();
		session.update(nhiemVu);
	}

	@Override
	public List<NhiemVu> getAll() {
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("from NhiemVu",NhiemVu.class).list();
	}

	@Override
	public NhiemVu getById(String maDuAn,String maNhanVien) {
		Session session= sessionFactory.getCurrentSession();
		return (NhiemVu) session.createQuery("from NhiemVu where maDuAn ='"+maDuAn+"' and maNhanVien='"+maNhanVien+"'",NhiemVu.class).getSingleResult();
	}
	@Override
	public void delete(NhiemVu nhiemvu) {
		Session session= sessionFactory.getCurrentSession();
		session.delete(nhiemvu);
	}
	
}

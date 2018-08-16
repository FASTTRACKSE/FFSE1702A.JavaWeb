package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.KhachHangDao;
import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;

@Repository
@Transactional
public class KhachHangDaoImpl implements KhachHangDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(KhachHang khachHang) {
		Session session=sessionFactory.getCurrentSession();
		session.save(khachHang);
		
	}
	@Override
	public KhachHang getById(String maKhachHang) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(KhachHang.class,maKhachHang);		
	}
	@Override
	public List<KhachHang> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from KhachHang",KhachHang.class).list();
	}
	@Override
	public void update(KhachHang khachHang) {
		Session session=sessionFactory.getCurrentSession();
		session.update(khachHang);
		
	}
	@Override
	public void delete(String maKhachHang) {
		Session session=sessionFactory.getCurrentSession();
		session.delete(session.get(KhachHang.class,maKhachHang));	
	}
}
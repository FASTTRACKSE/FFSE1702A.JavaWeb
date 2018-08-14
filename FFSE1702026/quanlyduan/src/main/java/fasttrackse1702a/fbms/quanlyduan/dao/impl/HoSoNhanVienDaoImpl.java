package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.HoSoNhanVienDao;
import fasttrackse1702a.fbms.quanlyduan.entity.HoSoNhanVien;

@Repository
@Transactional
public class HoSoNhanVienDaoImpl implements HoSoNhanVienDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public List<HoSoNhanVien> getAll() {
		Session session= sessionFactory.getCurrentSession();
		return session.createQuery("from HoSoNhanVien where maPhongBan='PDA' and maChucDanh ='NV' ",HoSoNhanVien.class).list();
	}
	@Override
	public HoSoNhanVien getByID(int idNhanVien) {
		
		Session session= sessionFactory.getCurrentSession();
		return session.get(HoSoNhanVien.class,idNhanVien);
	}
	
}

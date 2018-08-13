package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuanLyChucDanhDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;

@Repository
public class QuanLyChucDanhDAOImpl implements QuanLyChucDanhDAO {

	@Autowired(required = true)
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ChucDanh> listChucDanh() {
		Session session = this.sessionFactory.getCurrentSession();
		List<ChucDanh> chucdanhList = session.createQuery("from ChucDanh").list();
		return chucdanhList;
	}

	@Override
	public void addChucDanh(ChucDanh p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(p);
	}

	@Override
	public void updateChucDanh(ChucDanh p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
	}

	@Override
	public ChucDanh getChucDanhByMa(String maChucDanh) {
		Session session = this.sessionFactory.getCurrentSession();
		ChucDanh p = (ChucDanh) session.get(ChucDanh.class, maChucDanh);
		return p;
	}
	
	@Override
	public void removeChucDanh(String maChucDanh) {
		Session session = this.sessionFactory.getCurrentSession();
		ChucDanh remove = (ChucDanh) session.load(ChucDanh.class, maChucDanh);
		if(null != remove) {
			session.delete(remove);
		}
	}
}

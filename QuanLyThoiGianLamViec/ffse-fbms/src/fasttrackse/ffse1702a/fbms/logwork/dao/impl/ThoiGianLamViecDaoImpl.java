package fasttrackse.ffse1702a.fbms.logwork.dao.impl;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.ffse1702a.fbms.logwork.dao.ThoiGianLamViecDao;
import fasttrackse.ffse1702a.fbms.logwork.entity.NhiemVu;
import fasttrackse.ffse1702a.fbms.logwork.entity.ThoiGianLamViec;

@Repository
public class ThoiGianLamViecDaoImpl implements ThoiGianLamViecDao {
	
	@Autowired(required = true)
	SessionFactory sessionFactory;

	@Override
	public void createLogWork(ThoiGianLamViec thoiGianLamViec) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(thoiGianLamViec);
	}

	@Override
	public ThoiGianLamViec getLogWorkById(int maThoiGianLamViec) {
		Session session = sessionFactory.getCurrentSession();
		ThoiGianLamViec thoiGianLamViec = session.get(ThoiGianLamViec.class, maThoiGianLamViec);
		return thoiGianLamViec;
	}

	@Override
	public void updateLogWork(ThoiGianLamViec thoiGianLamViec) {
		Session session = sessionFactory.getCurrentSession();
		session.update(thoiGianLamViec);
	}

	@Override
	public void deleteLogWork(int maThoiGianLamViec) {
		
	}

}

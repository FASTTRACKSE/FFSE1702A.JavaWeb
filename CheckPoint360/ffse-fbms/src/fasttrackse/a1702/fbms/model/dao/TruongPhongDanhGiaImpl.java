package fasttrackse.a1702.fbms.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.model.entity.TruongPhong;

@Repository
public class TruongPhongDanhGiaImpl implements TruongPhongDanhGiaDAO {

	@Autowired(required = true)

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void luuDanhGia(TruongPhong truongPhong) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(truongPhong);

	}

	
	
}

package fasttrackse.a1702.fbms.logwork.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;

@Repository
@Transactional(rollbackFor = Exception.class)
public class LogworkDAOimpl implements LogworkDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void create(ThoiGianLamViec logWork) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(logWork);
	}
}

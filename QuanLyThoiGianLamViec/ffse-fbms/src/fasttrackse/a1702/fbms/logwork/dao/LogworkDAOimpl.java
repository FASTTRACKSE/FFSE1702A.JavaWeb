package fasttrackse.a1702.fbms.logwork.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;

@Repository
@Transactional("myTransactionManager")
public class LogworkDAOimpl implements LogworkDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void create(ThoiGianLamViec logWork) {
		Session session = sessionFactory.openSession();
		session.save(logWork);
	}

	@Override
	public List<ThoiGianLamViec> getAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.getCurrentSession();

		Query q = session.createQuery("from ThoiGianLamViec");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);

		return q.list();
	}

	@Override
	public List<ThoiGianLamViec> getAll() {
		Session session = sessionFactory.openSession();
		List<ThoiGianLamViec> list = session.createQuery("from ThoiGianLamViec").list();
		session.close();
		return list;
	}

}

package fasttrackse.a1702.fbms.phongban.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.phongban.model.entities.PhongBan;

@SuppressWarnings({ "deprecation", "unused" })
public class PhongBanDaoImpl implements PhongBanDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PhongBan> findAll() {
		Session session = this.sessionFactory.openSession();
		List<PhongBan> list = session.createQuery("from PhongBan").list();
		session.close();
		return list;
	}

	@Override
	public void addNew(PhongBan pb) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(pb);
		tx.commit();
		session.close();
	}

	@Override
	public void update(PhongBan pb) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(pb);
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String maPhongBan) {
		Session session = this.sessionFactory.openSession();
		Transaction pb = session.beginTransaction();
		session.delete(session.get(PhongBan.class, maPhongBan));
		pb.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<PhongBan> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from PhongBan");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		List<PhongBan> list = q.getResultList();
		session.close();
		return list;
	}

	@Override
	public PhongBan findByMaPhongBan(String maPhongBan) {
		Session session = this.sessionFactory.openSession();
		PhongBan pb = session.get(PhongBan.class, maPhongBan);
		session.close();
		return pb;
	}

}

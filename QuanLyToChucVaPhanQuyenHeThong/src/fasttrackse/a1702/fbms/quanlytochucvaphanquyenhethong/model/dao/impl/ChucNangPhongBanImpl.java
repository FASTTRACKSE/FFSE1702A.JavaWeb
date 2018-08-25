package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.ChucNangPhongBanDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucNangPhongBan;

public class ChucNangPhongBanImpl implements ChucNangPhongBanDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ChucNangPhongBan> findAll() {
		Session session = this.sessionFactory.openSession();
		List<ChucNangPhongBan> list = session.createQuery("from ChucNangPhongBan").list();
		session.close();
		return list;
	}

	@Override
	public void addNew(ChucNangPhongBan cd) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(cd);
		tx.commit();
		session.close();
	}

	@Override
	public void update(ChucNangPhongBan cd) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(cd);
		tx.commit();
		session.close();
	}

	@Override
	public void delete(int id) {
		Session session = this.sessionFactory.openSession();
		Transaction pb = session.beginTransaction();
		session.delete(session.get(ChucNangPhongBan.class, id));
		pb.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ChucNangPhongBan> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ChucNangPhongBan");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		List<ChucNangPhongBan> list = q.getResultList();
		session.close();
		return list;
	}

	@Override
	public ChucNangPhongBan findById(int id) {
		Session session = this.sessionFactory.openSession();
		ChucNangPhongBan pb = session.get(ChucNangPhongBan.class, id);
		session.close();
		return pb;
	}

}

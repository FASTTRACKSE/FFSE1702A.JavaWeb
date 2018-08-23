package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucDanh;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.ChucDanhDao;

public class ChucDanhDaoImpl implements ChucDanhDao{
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ChucDanh> findAll() {
		Session session = this.sessionFactory.openSession();
		List<ChucDanh> list = session.createQuery("from ChucDanh").list();
		session.close();
		return list;
	}

	@Override
	public void addNew(ChucDanh cd) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(cd);
		tx.commit();
		session.close();
	}

	@Override
	public void update(ChucDanh cd) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(cd);
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String maChucDanh) {
		Session session = this.sessionFactory.openSession();
		Transaction pb = session.beginTransaction();
		session.delete(session.get(ChucDanh.class, maChucDanh));
		pb.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ChucDanh> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ChucDanh");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		List<ChucDanh> list = q.getResultList();
		session.close();
		return list;
	}

	@Override
	public ChucDanh findByMaChucDanh(String maChucDanh) {
		Session session = this.sessionFactory.openSession();
		ChucDanh pb = session.get(ChucDanh.class, maChucDanh);
		session.close();
		return pb;
	}

}

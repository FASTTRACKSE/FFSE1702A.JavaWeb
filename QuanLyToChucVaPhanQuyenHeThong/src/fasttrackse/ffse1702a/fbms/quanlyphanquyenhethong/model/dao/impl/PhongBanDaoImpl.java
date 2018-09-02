package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao.PhongBanDao;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.PhongBan;

@Repository
public class PhongBanDaoImpl implements PhongBanDao {
	@Autowired
	private SessionFactory sessionFactory;

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

package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.FunctionRoleDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.FunctionRole;

public class FunctionRoleDaoImpl implements FunctionRoleDao{
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<FunctionRole> findAll() {
		Session session = this.sessionFactory.openSession();
		List<FunctionRole> list = session.createQuery("from FunctionRole").list();
		session.close();
		return list;
	}

	@Override
	public void addNew(FunctionRole cd) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(cd);
		tx.commit();
		session.close();
	}

	@Override
	public void update(FunctionRole cd) {
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
		session.delete(session.get(FunctionRole.class, id));
		pb.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<FunctionRole> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from FunctionRole");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		List<FunctionRole> list = q.getResultList();
		session.close();
		return list;
	}

	@Override
	public FunctionRole findById(int id) {
		Session session = this.sessionFactory.openSession();
		FunctionRole pb = session.get(FunctionRole.class, id);
		session.close();
		return pb;
	}

}

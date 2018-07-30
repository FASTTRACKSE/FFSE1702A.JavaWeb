package springhibernate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import springhibernate.entities.Lop;

public class LopDAOImpl implements LopDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void Save(Lop lop) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<Lop> list() {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		List<Lop> result = session.createCriteria(Lop.class).list();
		tx.commit();
		session.close();
		return result;
	}

	@Override
	public void updateLop(Lop sv) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteLop(int id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void getLopById(int id) {
		
	}

}

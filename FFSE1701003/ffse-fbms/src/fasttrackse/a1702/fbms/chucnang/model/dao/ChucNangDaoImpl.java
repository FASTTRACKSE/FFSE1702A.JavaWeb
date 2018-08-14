package fasttrackse.a1702.fbms.chucnang.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;

@Repository
public class ChucNangDaoImpl implements ChucNangDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<ChucNang> list() {
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		List<ChucNang> list = session.createQuery("from ChucNang").list();
		/*List<ChucNang> list = session.createCriteria(ChucNang.class).list();*/
		tx.commit();
		session.close();
		return list;
	}

	@Override
	public void save(ChucNang cn) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.persist(cn);
		tx.commit();
		session.close();
	}

	@Override
	public void update(ChucNang cn) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.update(cn);
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String ma_chuc_nang) {
		Session session = this.sessionFactory.openSession();
		Transaction cn =  session.beginTransaction();
		session.delete(getChucNangByCode(ma_chuc_nang));
		cn.commit();
		session.close();
	}

	@Override
	public void active(String ma_chuc_nang) {
		// TODO Auto-generated method stub

	}

	@Override
	public ChucNang getChucNangByCode(String ma_chuc_nang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		ChucNang cn = (ChucNang) session.get(ChucNang.class, ma_chuc_nang);
		tx.commit();
		session.close();
		return cn;
	}

}

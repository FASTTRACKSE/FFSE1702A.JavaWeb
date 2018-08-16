package fasttrackse.a1702.fbms.chucnang.model.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.SQLQuery;
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
	private EntityManager em;
	private EntityManager entityManager;

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<ChucNang> list() {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<ChucNang> list = session.createQuery("from ChucNang").list();
		/* List<ChucNang> list = session.createCriteria(ChucNang.class).list(); */
		tx.commit();
		session.close();
		return list;
	}

	@Override
	public void save(ChucNang cn) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(cn);
		tx.commit();
		session.close();
	}

	@Override
	public void update(ChucNang cn) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(cn);
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String ma_chuc_nang) {
		Session session = this.sessionFactory.openSession();
		Transaction cn = session.beginTransaction();
		session.delete(getChucNangByCode(ma_chuc_nang));
		cn.commit();
		session.close();
	}

	@Override
	public void active(String ma_chuc_nang) {
	}

	@Override
	public ChucNang getChucNangByCode(String ma_chuc_nang) {
		Session session = this.sessionFactory.getCurrentSession();

//		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		ChucNang hsnv = (ChucNang) session.load(ChucNang.class, new String(ma_chuc_nang));
		System.out.println(hsnv);
		
		tx.commit();
		session.close();
		return hsnv;
//		Session session = this.sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//		Query query = entityManager.createQuery("SELECT * FROM ChucNang sm WHERE sm.ma_chuc_nang=:arg1");
//		query.setParameter("arg1", ma_chuc_nang);
//		tx.commit();
//		session.close();
//		ChucNang cn = (ChucNang) query;
//		return cn;
		
//		Session session = this.sessionFactory.openSession();
//		Transaction tx = session.beginTransaction();
//		List<ChucNang> cn = (List<ChucNang>) session
//				.createNativeQuery("SELECT * FROM chuc_nang WHERE ma_chuc_nang = ?").addEntity(ChucNang.class)
//				.setParameter(1, ma_chuc_nang)
//				.list();
//		
//		tx.commit();
//		session.close();
//		System.out.println(cn);
//		return (ChucNang) cn;
	}
	
	public ChucNang findByMaChucNang(String maChucNang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		List<ChucNang> phones = session.createNativeQuery( "SELECT * FROM ChucNang" )
			.addEntity(ChucNang.class )
			.list();
		tx.commit();
		session.close();
		return (ChucNang) phones;
	}

}

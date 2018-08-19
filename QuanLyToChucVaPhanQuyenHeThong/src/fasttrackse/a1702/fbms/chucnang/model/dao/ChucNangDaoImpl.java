package fasttrackse.a1702.fbms.chucnang.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;

@SuppressWarnings("deprecation")
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
		@SuppressWarnings("unchecked")
		List<ChucNang> list = session.createQuery("from ChucNang").list();
		session.close();
		return list;
	}
	
	@Override
	public ChucNang findByMaChucNang(String ma_chuc_nang) {
		Session session = this.sessionFactory.openSession();
		ChucNang cn = session.get(ChucNang.class, ma_chuc_nang);
		session.close();
		return cn;
	}
	
	@SuppressWarnings("unchecked")
	public List<ChucNang> findAll() {
		Session session = this.sessionFactory.openSession();
		List<ChucNang> list = session.createQuery("from ChucNang").list();
		session.close();
		return list;
	}
	
	@Override
	public List<ChucNang> findAllForPaging(int startPosition, int maxResult){
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from ChucNang");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		List<ChucNang> list = q.getResultList();
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
		session.delete(session.get(ChucNang.class, ma_chuc_nang));
		cn.commit();
		session.close();
	}

	@Override
	public void active(String ma_chuc_nang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		SQLQuery sql = session
				.createSQLQuery("UPDATE chuc_nang SET `trang_thai`=if(`trang_thai`=1,0,1) WHERE `ma_chuc_nang` in ('"
						+ ma_chuc_nang + "')");
		sql.executeUpdate();
		tx.commit();
		session.close();
	}

	@Override
	public ChucNang getChucNangByCode(String ma_chuc_nang) {
		Session session = this.sessionFactory.openSession();
		List<ChucNang> cn = session.createSQLQuery("select * from chuc_nang WHERE ma_chuc_nang ='" + ma_chuc_nang + "'")
				.setResultTransformer(Transformers.aliasToBean(ChucNang.class)).list();

		session.close();
		return cn.get(0);
	}

}

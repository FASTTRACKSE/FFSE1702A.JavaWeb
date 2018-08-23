package fasttrackse.a1702.fbms.chucnangchucdanh.model.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.chucnangchucdanh.model.entities.ChucNangChucDanh;

@SuppressWarnings("deprecation")
public class ChucNangChucDanhDaoImpl implements ChucNangChucDanhDao{
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings({ "unchecked"})
	@Override
	public List<ChucNangChucDanh> findAll() {
		Session session = this.sessionFactory.openSession();
		Criteria criteria = session.createCriteria(ChucNangChucDanh.class);
		criteria.setProjection(Projections.distinct(Projections.property("maChucDanh")));
		List<ChucNangChucDanh> list = criteria.list();
		session.close();
		return list;
	}

	@Override
	public void addNew(String maChucDanh, List<String> maChucNang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		String hql = "DELETE FROM ChucNangChucDanh WHERE maChucDanh= :mCD";
		session.createQuery(hql).setString("mCD", maChucDanh).executeUpdate();

		for (int i = 0; i < maChucNang.size(); i++) {
			ChucNangChucDanh cncd = new ChucNangChucDanh(maChucDanh, maChucNang.get(i));
			session.persist(cncd);
		}
		tx.commit();
		session.close();
	}

	@Override
	public void update(String maChucDanh, List<String> maChucNang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "DELETE FROM ChucNangChucDanh WHERE maChucDanh= :mPB";
		session.createQuery(hql).setString("mPB", maChucDanh).executeUpdate();

		for (int i = 0; i < maChucNang.size(); i++) {
			ChucNangChucDanh cnpb = new ChucNangChucDanh(maChucDanh, maChucNang.get(i));
			session.persist(cnpb);
		}
		
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String maChucDanh) {
		Session session = this.sessionFactory.openSession();
		Transaction cn = session.beginTransaction();
		String hql = "DELETE FROM ChucNangChucDanh WHERE maChucDanh= :mPB";
		session.createQuery(hql).setString("mPB", maChucDanh).executeUpdate();
		cn.commit();
		session.close();
	}

	@SuppressWarnings({ "rawtypes", "unchecked"})
	@Override
	public List<Object> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		SQLQuery query = session
				.createSQLQuery("SELECT DISTINCT chuc_nang_chuc_danh.ma_chuc_danh, chuc_danh.ten_chuc_danh FROM \r\n"
						+ "chuc_nang_chuc_danh LEFT JOIN chuc_danh \r\n"
						+ "ON chuc_nang_chuc_danh.ma_chuc_danh = chuc_danh.ma_chuc_danh");
		List<Object> list = query.getResultList();
		session.close();
		return list;
	}

	@SuppressWarnings({ "unchecked", "rawtypes"})
	@Override
	public List<Object> getMaChucNangByMaChucDanh(String maChucDanh) {
		Session session = this.sessionFactory.openSession();
		SQLQuery query = session
				.createSQLQuery("SELECT ma_chuc_nang FROM chuc_nang WHERE chuc_nang.trang_thai = 1 AND chuc_nang.ma_chuc_nang IN("
						+ "SELECT chuc_nang_chuc_danh.ma_chuc_nang FROM chuc_nang_chuc_danh WHERE ma_chuc_danh = '"
						+ maChucDanh + "')");
		List<Object> list = query.getResultList();
		session.close();
		return list;
	}

}

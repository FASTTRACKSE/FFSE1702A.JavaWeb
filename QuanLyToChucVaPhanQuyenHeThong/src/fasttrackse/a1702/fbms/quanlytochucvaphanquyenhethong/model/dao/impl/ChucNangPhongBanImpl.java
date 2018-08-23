package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.ChucNangPhongBanDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucNangPhongBan;

@SuppressWarnings("deprecation")
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
		Criteria criteria = session.createCriteria(ChucNangPhongBan.class);
		criteria.setProjection(Projections.distinct(Projections.property("maPhongBan")));
		List<ChucNangPhongBan> list = criteria.list();
		session.close();
		return list;
	}

	@Override
	public void addNew(String maPhongBan, List<String> maChucNang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();

		String hql = "DELETE FROM ChucNangPhongBan WHERE maPhongBan= :mPB";
		session.createQuery(hql).setString("mPB", maPhongBan).executeUpdate();

		for (int i = 0; i < maChucNang.size(); i++) {
			ChucNangPhongBan cnpb = new ChucNangPhongBan(maPhongBan, maChucNang.get(i));
			session.persist(cnpb);
		}
		tx.commit();
		session.close();
	}

	@Override
	public void update(String maPhongBan, List<String> maChucNang) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		String hql = "DELETE FROM ChucNangPhongBan WHERE maPhongBan= :mPB";
		session.createQuery(hql).setString("mPB", maPhongBan).executeUpdate();

		for (int i = 0; i < maChucNang.size(); i++) {
			ChucNangPhongBan cnpb = new ChucNangPhongBan(maPhongBan, maChucNang.get(i));
			session.persist(cnpb);
		}
		
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String maPhongBan) {
		Session session = this.sessionFactory.openSession();
		Transaction cn = session.beginTransaction();
		String hql = "DELETE FROM ChucNangPhongBan WHERE maPhongBan= :mPB";
		session.createQuery(hql).setString("mPB", maPhongBan).executeUpdate();
		cn.commit();
		session.close();
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Object> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		SQLQuery query = session
				.createSQLQuery("SELECT DISTINCT chuc_nang_phong_ban.ma_phong_ban, phong_ban.ten_phong_ban FROM \r\n"
						+ "chuc_nang_phong_ban LEFT JOIN phong_ban \r\n"
						+ "ON chuc_nang_phong_ban.ma_phong_ban = phong_ban.ma_phong_ban");
		List<Object> list = query.getResultList();
		session.close();
		return list;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<Object> getMaChucNangByMaPhongBan(String maPhongBan) {
		Session session = this.sessionFactory.openSession();
		SQLQuery query = session
				.createSQLQuery("SELECT ma_chuc_nang FROM chuc_nang WHERE chuc_nang.trang_thai = 1 AND chuc_nang.ma_chuc_nang IN("
						+ "SELECT chuc_nang_phong_ban.ma_chuc_nang FROM chuc_nang_phong_ban WHERE ma_phong_ban = '"
						+ maPhongBan + "')");
		List<Object> list = query.getResultList();
		session.close();
		return list;
	}
}

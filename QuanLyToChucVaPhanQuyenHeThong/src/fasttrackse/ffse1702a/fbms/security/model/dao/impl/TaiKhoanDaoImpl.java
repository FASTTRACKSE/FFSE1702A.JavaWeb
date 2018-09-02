package fasttrackse.ffse1702a.fbms.security.model.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.Login;
import fasttrackse.ffse1702a.fbms.security.entity.TaiKhoan;
import fasttrackse.ffse1702a.fbms.security.model.dao.TaiKhoanDao;

@SuppressWarnings("deprecation")
@Repository
public class TaiKhoanDaoImpl implements TaiKhoanDao {

	@Autowired(required = true)
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<TaiKhoan> findAll() {
		Session session = this.sessionFactory.openSession();
		List<TaiKhoan> list = session.createQuery("from TaiKhoan").list();
		session.close();
		return list;
	}

	@Override
	public void addNew(TaiKhoan cn) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.persist(cn);
		tx.commit();
		session.close();
	}

	@Override
	public void update(TaiKhoan cn) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(cn);
		tx.commit();
		session.close();
	}

	@Override
	public void delete(String tenDangNhap) {
		Session session = this.sessionFactory.openSession();
		Transaction cn = session.beginTransaction();
		session.delete(session.get(TaiKhoan.class, tenDangNhap));
		cn.commit();
		session.close();
	}

	@SuppressWarnings({ "rawtypes" })
	@Override
	public void active(String tenDangNhap) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		SQLQuery sql = session
				.createSQLQuery("UPDATE tai_khoan SET `trang_thai`=if(`trang_thai`=1,0,1) WHERE `ten_dang_nhap` in ('"
						+ tenDangNhap + "')");
		sql.executeUpdate();
		tx.commit();
		session.close();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TaiKhoan> findAllForPaging(int startPosition, int maxResult) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("from TaiKhoan");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		List<TaiKhoan> list = q.getResultList();
		session.close();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public TaiKhoan validateTaiKhoan(Login login) {
		Session session = this.sessionFactory.openSession();
		Query q = session.createQuery("FROM TaiKhoan WHERE maNhanVien='" + login.getUsername() + "' and matKhau='"
				+ login.getPassword() + "'");
		List<TaiKhoan> users = q.getResultList();
		session.close();
		return users.size() > 0 ? users.get(0) : null;
	}

	@Override
	public TaiKhoan findByMaNhanVien(String maNhanVien) {
		Session session = this.sessionFactory.openSession();
		TaiKhoan tk = session.get(TaiKhoan.class, maNhanVien);
		session.close();
		return tk;
	}

	@Override
	public TaiKhoan findByTenDangNhap(String tenDangNhap) {
		Session session = this.sessionFactory.openSession();
		TaiKhoan tk = session.get(TaiKhoan.class, tenDangNhap);
		session.close();
		return tk;
	}

}
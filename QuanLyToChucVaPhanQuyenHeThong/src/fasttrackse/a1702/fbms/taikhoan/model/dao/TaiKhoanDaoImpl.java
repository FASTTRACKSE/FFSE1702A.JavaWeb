package fasttrackse.a1702.fbms.taikhoan.model.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.taikhoan.model.entities.Login;
import fasttrackse.a1702.fbms.taikhoan.model.entities.TaiKhoan;

@SuppressWarnings("deprecation")
public class TaiKhoanDaoImpl implements TaiKhoanDao {

	@Autowired
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
	public void delete(String maNhanVien) {
		Session session = this.sessionFactory.openSession();
		Transaction cn = session.beginTransaction();
		session.delete(session.get(TaiKhoan.class, maNhanVien));
		cn.commit();
		session.close();
	}

	@SuppressWarnings({ "rawtypes" })
	@Override
	public void active(String maNhanVien) {
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		SQLQuery sql = session
				.createSQLQuery("UPDATE tai_khoan SET `trang_thai`=if(`trang_thai`=1,0,1) WHERE `ma_nhan_vien` in ('"
						+ maNhanVien + "')");
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
		Query q = session.createQuery("FROM TaiKhoan WHERE maNhanVien='" + login.getUsername() 
		+ "' and matKhau='" + login.getPassword() + "'");
		List<TaiKhoan> users = q.getResultList();
	    session.close();
	    return users.size() > 0 ? users.get(0) : null;
	}

}

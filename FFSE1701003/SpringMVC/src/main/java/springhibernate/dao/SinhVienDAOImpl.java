package springhibernate.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import springhibernate.entities.SinhVien;

public class SinhVienDAOImpl implements SinhVienDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void Save(SinhVien sv) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.persist(sv);
		tx.commit();
		session.close();
	}

	@Override
	public List<SinhVien> list() {
		Session session = this.sessionFactory.openSession();
		List<SinhVien> list = session.createCriteria(SinhVien.class).list();
		//List<SinhVien> list1 = session.createQuery("from SinhVien").list();
		//List<SinhVien> list2 = session.createSQLQuery("SELECT * FROM tbl_sinhvien").addEntity(SinhVien.class).list();
		return list;
	}

	@Override
	public void updateSinhVien(SinhVien sv) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.update(sv);
		tx.commit();
		session.close();
	}

	@Override
	public void deleteSinhVien(int id) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		session.delete(getSinhVienById(id));
		tx.commit();
		session.close();
	}

	@Override
	public SinhVien getSinhVienById(int id) {
		Session session = this.sessionFactory.openSession();
		Transaction tx =  session.beginTransaction();
		SinhVien sv = (SinhVien) session.get(SinhVien.class, id);
		tx.commit();
		session.close();
		return sv;
	}

}

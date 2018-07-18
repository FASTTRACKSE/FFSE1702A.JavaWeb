package namdv.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import namdv.model.entities.SinhVien;

@Repository
public class SinhVienDAOImpl implements SinhVienDAO {
	private static final Logger logger = LoggerFactory.getLogger(SinhVienDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addSinhVien(SinhVien sv) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(sv);
		logger.info("SinhVien saved successfully, SinhVien Details=" + sv);
	}

	@Override
	public void updateSinhVien(SinhVien sv) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(sv);
		logger.info("SinhVien updated successfully, SinhVien Details=" + sv);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<SinhVien> getAllSinhVien() {
		Session session = this.sessionFactory.getCurrentSession();
		List<SinhVien> sinhVienList = session.createQuery("from SinhVien").list();
		for (SinhVien sv : sinhVienList) {
			logger.info("Person List::" + sv);
		}
		return sinhVienList;
	}

	@Override
	public SinhVien getSinhVienById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		SinhVien sv = (SinhVien) session.load(SinhVien.class, new Integer(id));
		logger.info("SinhVien loaded successfully, SinhVien details=" + sv);
		return sv;
	}

	@Override
	public void deleteSinhVien(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		SinhVien sv = (SinhVien) session.load(SinhVien.class, new Integer(id));
		if (null != sv) {
			session.delete(sv);
		}
		logger.info("SinhVien deleted successfully, SinhVien details=" + sv);
	}

}

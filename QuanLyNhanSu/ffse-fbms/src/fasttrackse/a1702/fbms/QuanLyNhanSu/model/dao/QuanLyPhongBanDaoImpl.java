package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.PhongBan;

@Repository
@Transactional
public class QuanLyPhongBanDaoImpl implements QuanLyPhongBanDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addPhongBan(PhongBan p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(p);
	}

	@Override
	public void updatePhongBan(PhongBan p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
	}

	@Override
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<PhongBan> listPhongBan() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from PhongBan");
		List<PhongBan> PhongBanList = query.list();

		return PhongBanList;
	}

	@Override
	public PhongBan getMaPhongBan(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		PhongBan p = (PhongBan) session.get(PhongBan.class, id);
<<<<<<< HEAD
	
=======
>>>>>>> 00b84380abc48565c1f8f2324dc9652990ac6801
		return p;
	}

	@Override
	public void removePhongBan(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		PhongBan p = (PhongBan) session.load(PhongBan.class, id);
		if (null != p) {
			session.delete(p);
		}

	}
}

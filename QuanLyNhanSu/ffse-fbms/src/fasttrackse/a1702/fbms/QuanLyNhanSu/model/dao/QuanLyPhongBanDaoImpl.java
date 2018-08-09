package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.PhongBan;

@Repository
public class QuanLyPhongBanDaoImpl implements QuanLyPhongBanDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addPhongBan(PhongBan p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
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
		PhongBan p = (PhongBan) session.load(PhongBan.class, id);
	
		return p;
	}

	@Override
	public void removePhongBan(String id) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		PhongBan p = (PhongBan) session.load(PhongBan.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}

	}
}

package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.TinhTrangHonNhan;

@Repository
public class TinhTrangHonNhanDaoImpl implements TinhTrangHonNhanDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<TinhTrangHonNhan> getAllTinhTrangHonNhan() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from TinhTrangHonNhan");
		List<TinhTrangHonNhan> listTinhTrangHonNhan = query.list();

		return listTinhTrangHonNhan;
	}

}

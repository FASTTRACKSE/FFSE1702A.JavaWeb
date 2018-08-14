package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuocTichDao;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.QuocTich;

@Repository
public class QuocTichDaoImpl implements QuocTichDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<QuocTich> getAllQuocTich() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from QuocTich");
		List<QuocTich> listQuocTich = query.list();

		return listQuocTich;
	}

}

package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;

@Repository
public class QuanLyChucDanhDAOImpl  implements QuanLyChucDanhDAO{

	@Autowired(required=true)
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<ChucDanh> listChucDanh() {
		Session session = this.sessionFactory.getCurrentSession();
		List<ChucDanh> chucdanhList = session.createQuery("from ChucDanh").list();
		return chucdanhList;
	}
}

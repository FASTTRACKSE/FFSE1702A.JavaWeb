package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinh;

@Repository
public class ThongTinGiaDinhDAOImpl implements ThongTinGiaDinhDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addThongTinGiaDinh(ThongTinGiaDinh ttgd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(ttgd);
	}

	@Override
	public void updateThongTinGiaDinh(ThongTinGiaDinh ttgd) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(ttgd);
	}
}

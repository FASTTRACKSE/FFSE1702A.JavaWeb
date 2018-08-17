package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.QuanLyHoSoDAO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.PhongBan;

@Repository
public class QuanLyHoSoDAOImpl implements QuanLyHoSoDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public HoSoNhanVien getHoSoNhanVienById(int maNhanVien) {
		Session session = this.sessionFactory.getCurrentSession();
		HoSoNhanVien hsnv = session.load(HoSoNhanVien.class, new Integer(maNhanVien));
		System.out.println(hsnv);
		return hsnv;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<HoSoNhanVien> getAllHoSo() {
		Session session = this.sessionFactory.getCurrentSession();
		List<HoSoNhanVien> listHoSo = session.createQuery("from HoSoNhanVien").list();
		return listHoSo;
	}

	@Override
	public List<HoSoNhanVien> getHoSoByPhongBan(String maPhongBan) {
		Session session = this.sessionFactory.getCurrentSession();
		PhongBan pb = session.load(PhongBan.class, maPhongBan);
		List<HoSoNhanVien> listHoSo = pb.getHoSoNhanViens();
		return listHoSo;
	}

	@Override
	public void addHoSoNhanVien(HoSoNhanVien hsnv) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(hsnv);
	}

	@Override
	public void updateHoSoNhanVien(HoSoNhanVien hsnv) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(hsnv);
	}

	@SuppressWarnings("rawtypes")
	@Override
	public void deleteHoSoNhanVien(int maNhanVien) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("update HoSoNhanVien set trang_thai = 2 where ma_nhan_vien = :maNhanVien");
		query.setParameter("maNhanVien", maNhanVien);
		query.executeUpdate();
	}

	@SuppressWarnings("rawtypes")
	@Override
	public String getAutoId() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createSQLQuery(
				"SELECT `AUTO_INCREMENT` FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'ffse1702a' AND TABLE_NAME = 'ho_so_nhan_vien'");
		;
		String index = query.getSingleResult().toString();
		return index;
	}

	@SuppressWarnings({ "unchecked" })
	@Override
	public List<HoSoNhanVien> getAllHoSo(int INITIAL, int RECORD_SIZE, String GLOBAL_SEARCH_TERM, String[] COLUMN_NAME,
			String[] DIRECTION) {

		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = (Criteria) session.createQuery("from HoSoNhanVien").setFirstResult(INITIAL)
				.setMaxResults(RECORD_SIZE);
		int size = DIRECTION.length;
		for (int i = 0; i < size; i++) {
			if (!DIRECTION[i].equals("asc")) {
				criteria.addOrder(Order.asc(COLUMN_NAME[i]));
			} else {
				criteria.addOrder(Order.desc(COLUMN_NAME[i]));
			}
		}
		List<HoSoNhanVien> listHoSo = criteria.list();

		return listHoSo;
	}

}

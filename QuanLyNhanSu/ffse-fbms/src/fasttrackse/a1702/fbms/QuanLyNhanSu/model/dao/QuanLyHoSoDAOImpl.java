package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.PhongBan;

@Repository
public class QuanLyHoSoDAOImpl implements QuanLyHoSoDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public HoSoNhanVien getHoSoNhanVienById(int maNhanVien) {
		Session session = this.sessionFactory.getCurrentSession();
		HoSoNhanVien hsnv = (HoSoNhanVien) session.load(HoSoNhanVien.class, new Integer(maNhanVien));
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
		PhongBan pb = (PhongBan) session.load(PhongBan.class, maPhongBan);
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

}

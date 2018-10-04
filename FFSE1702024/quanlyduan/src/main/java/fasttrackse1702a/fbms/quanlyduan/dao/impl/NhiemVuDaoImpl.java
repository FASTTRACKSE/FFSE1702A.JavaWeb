package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.NhiemVuDao;
import fasttrackse1702a.fbms.quanlyduan.entity.NhiemVu;

@Repository
@Transactional
public class NhiemVuDaoImpl implements NhiemVuDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void save(NhiemVu nhiemVu) {
		Session session = sessionFactory.getCurrentSession();
		session.save(nhiemVu);

	}

	@Override
	@Transactional
	public void update(NhiemVu nhiemVu, NhiemVu oldNhiemVu) {
		Session session = sessionFactory.getCurrentSession();
		Query query= session.createSQLQuery("Update nhiem_vu  set ma_vai_tro='" + nhiemVu.getMaVaiTro() + "' " + "where ma_du_an="
				+ nhiemVu.getMaDuAn() + " and ma_nhan_vien=" + nhiemVu.getMaNhanVien() + " and ma_vai_tro='"
				+ oldNhiemVu.getMaVaiTro() + "'");
		query.executeUpdate();
		
	}

	@Override
	public List<NhiemVu> getAll(int maDuAn) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from NhiemVu where maDuAn=" + maDuAn, NhiemVu.class).list();
	}

	@Override
	public List<NhiemVu> getById(int maDuAn, int maNhanVien) {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from NhiemVu where maDuAn ='" + maDuAn + "' and maNhanVien='" + maNhanVien + "'",
				NhiemVu.class).list();
	}

	@Override
	public void delete(NhiemVu nhiemvu) {
		Session session = sessionFactory.getCurrentSession();

		session.delete(nhiemvu);
	}

	@Override
	public NhiemVu getDetailNhiemVu(int maDuAn, int maNhanVien, String maVaiTro) {
		Session session = sessionFactory.getCurrentSession();
		if (session.createQuery("from NhiemVu where maDuAn ='" + maDuAn + "' and maNhanVien='" + maNhanVien
				+ "' and maVaiTro='" + maVaiTro + "'", NhiemVu.class).list().size() == 0) {
			return null;
		}
		return session.createQuery("from NhiemVu where maDuAn ='" + maDuAn + "' and maNhanVien='" + maNhanVien
				+ "' and maVaiTro='" + maVaiTro + "'", NhiemVu.class).getSingleResult();
	}

}

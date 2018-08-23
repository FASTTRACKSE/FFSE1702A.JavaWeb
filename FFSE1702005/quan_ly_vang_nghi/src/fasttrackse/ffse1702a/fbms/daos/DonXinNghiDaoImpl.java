package fasttrackse.ffse1702a.fbms.daos;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.ffse1702a.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.ffse1702a.fbms.entities.LyDoEntity;

@Repository
public class DonXinNghiDaoImpl implements DonXinNghiDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<DanhSachXinNghiEntity> danhSachXinNghiChoDuyet() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<DanhSachXinNghiEntity> cq = cb.createQuery(DanhSachXinNghiEntity.class);
		Root<DanhSachXinNghiEntity> root = cq.from(DanhSachXinNghiEntity.class);
		cq.select(root).where(cb.equal(root.get("trang_thai"), "Chờ Phê Duyệt"));
		Query<DanhSachXinNghiEntity> query = session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public List<DanhSachXinNghiEntity> danhSachXinNghiDuyet() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<DanhSachXinNghiEntity> cq = cb.createQuery(DanhSachXinNghiEntity.class);
		Root<DanhSachXinNghiEntity> root = cq.from(DanhSachXinNghiEntity.class);
		cq.select(root).where(cb.equal(root.get("trang_thai"), "Duyệt"));
		Query<DanhSachXinNghiEntity> query = session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public List<DanhSachXinNghiEntity> danhSachXinNghiNhap(int page) {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<DanhSachXinNghiEntity> cq = cb.createQuery(DanhSachXinNghiEntity.class);
		Root<DanhSachXinNghiEntity> root = cq.from(DanhSachXinNghiEntity.class);
		cq.select(root)
				.where(cb.or(cb.equal(root.get("trang_thai"), "Nháp"), cb.equal(root.get("trang_thai"), "Từ chối")));
		Query<DanhSachXinNghiEntity> query = session.createQuery(cq);
		query.setFirstResult((page - 1) * 5);
		query.setMaxResults(5);
		return query.getResultList();
	}

	public long totalRecords() {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = "SELECT count(*) FROM DanhSachXinNghiEntity WHERE trang_thai = 'Nháp' or trang_thai = 'Từ chối'";
		Query<?> query = session.createQuery(queryString);
		return (Long) query.uniqueResult();
	}

	@Override
	public DanhSachXinNghiEntity layID(int id) {
		Session session = sessionFactory.getCurrentSession();
		DanhSachXinNghiEntity entity = (DanhSachXinNghiEntity) session.get(DanhSachXinNghiEntity.class,
				new Integer(id));
		return entity;
	}

	@Override
	public void themDon(DanhSachXinNghiEntity entity) {
		Session session = sessionFactory.getCurrentSession();
		entity.setTrang_thai("Chờ Phê Duyệt");
		if (!kiemTraNhanVienNgayNghiEntity(entity.getNgaynghientity().getMa_nhan_vien())) {
			// thêm mới trong `ngay_nghi`
			session.createSQLQuery("insert into `ngay_nghi` (ma_nhan_vien,so_ngay_con_lai) values ('"
					+ entity.getNgaynghientity().getMa_nhan_vien() + "','12')").executeUpdate();
		}
		session.persist(entity);
	}

	@Override
	public void themNhap(DanhSachXinNghiEntity entity) {
		Session session = sessionFactory.getCurrentSession();
		entity.setTrang_thai("Nháp");
		if (!kiemTraNhanVienNgayNghiEntity(entity.getNgaynghientity().getMa_nhan_vien())) {
			// thêm mới trong `ngay_nghi`
			session.createSQLQuery("insert into `ngay_nghi` (ma_nhan_vien,so_ngay_con_lai) values ('"
					+ entity.getNgaynghientity().getMa_nhan_vien() + "','12')").executeUpdate();			
		}
		session.persist(entity);
	}

	@Override
	public boolean kiemTraNhanVienNgayNghiEntity(int maNhanVien) {
		Session session = (Session) sessionFactory.getCurrentSession();
		String count = session
				.createSQLQuery("select count(*) from `ngay_nghi` where `ma_nhan_vien` = '" + maNhanVien + "'")
				.getSingleResult().toString();

		return count.equals("0") ? false : true;
	}

	@Override
	public void suaNhap(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		entity.setTrang_thai("Nháp");
		session.update(entity);
	}

	@Override
	public void suaDon(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery(
				"update DanhSachXinNghiEntity set trang_thai = 'Chờ Phê Duyệt' where ma_don=" + entity.getMa_don())
				.executeUpdate();
	}

	@Override
	public void duyet(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		entity.setTrang_thai("Duyệt");
		int ngayconlai = entity.getNgaynghientity().getSo_ngay_con_lai();
		int ngaydanghi = entity.getNgaynghientity().getSo_ngay_da_nghi();
		int songaynghi = entity.getSo_ngay_nghi();
		int maNV = entity.getNgaynghientity().getMa_nhan_vien();
		session.update(entity);
		if (ngayconlai == 0) {
			session.createQuery("update NgayNghiEntity set so_ngay_da_nghi = " + (ngaydanghi + songaynghi)
					+ "where ma_nhan_vien = " + maNV).executeUpdate();
		} else if (songaynghi > ngayconlai) {
			session.createQuery("update NgayNghiEntity set so_ngay_con_lai = 0,so_ngay_da_nghi = "
					+ (ngaydanghi + songaynghi) + "where ma_nhan_vien = " + maNV).executeUpdate();
		} else {
			session.createQuery("update NgayNghiEntity set so_ngay_con_lai = " + (ngayconlai - songaynghi)
					+ ",so_ngay_da_nghi = " + (ngaydanghi + songaynghi) + "where ma_nhan_vien = " + maNV)
					.executeUpdate();
		}
	}

	@Override
	public void tuChoi(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery(
				"update DanhSachXinNghiEntity set trang_thai = 'Từ chối' where ma_don =" + entity.getMa_don())
				.executeUpdate();
	}

	@Override
	public List<LyDoEntity> danhSachLyDo() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<LyDoEntity> cq = cb.createQuery(LyDoEntity.class);
		Root<LyDoEntity> root = cq.from(LyDoEntity.class);
		cq.select(root);
		Query<LyDoEntity> query = session.createQuery(cq);
		return query.getResultList();
	}

	@Override
	public void xoaNhap(int id) {
		Session session = sessionFactory.getCurrentSession();
		DanhSachXinNghiEntity entity = (DanhSachXinNghiEntity) session.get(DanhSachXinNghiEntity.class,
				new Integer(id));
		if (null != entity) {
			session.delete(entity);
		}
	}

}

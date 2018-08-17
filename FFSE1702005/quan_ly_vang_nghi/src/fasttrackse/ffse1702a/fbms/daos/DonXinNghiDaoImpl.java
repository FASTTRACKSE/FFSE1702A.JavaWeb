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
		query.setFirstResult((page - 1) * 1);
		query.setMaxResults(1);
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
		session.persist(entity);
	}

	@Override
	public void themNhap(DanhSachXinNghiEntity entity) {
		Session session = sessionFactory.getCurrentSession();
		entity.setTrang_thai("Nháp");
		session.persist(entity);		
	}

	@Override
	public void suaNhap(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery("update DanhSachXinNghiEntity set trang_thai = 'Nháp' where ma_don =" + entity.getMa_don())
				.executeUpdate();
	}

	@Override
	public void suaDon(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery(
				"update DanhSachXinNghiEntity set trang_thai = 'Chờ Phê Duyệt' where ma_don =" + entity.getMa_don())
				.executeUpdate();
	}
	
	@Override
	public void duyet(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery(
				"update DanhSachXinNghiEntity set trang_thai = 'Duyệt' where ma_don =" + entity.getMa_don())
				.executeUpdate();
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

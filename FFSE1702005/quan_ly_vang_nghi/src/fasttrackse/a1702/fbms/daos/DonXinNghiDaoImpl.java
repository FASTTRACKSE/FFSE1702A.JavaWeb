package fasttrackse.a1702.fbms.daos;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.a1702.fbms.entities.LyDoEntity;

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
	public List<DanhSachXinNghiEntity> danhSachXinNghiNhap() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<DanhSachXinNghiEntity> cq = cb.createQuery(DanhSachXinNghiEntity.class);
		Root<DanhSachXinNghiEntity> root = cq.from(DanhSachXinNghiEntity.class);
		cq.select(root).where(cb.equal(root.get("trang_thai"), "Nháp"));;
		Query<DanhSachXinNghiEntity> query = session.createQuery(cq);
		return query.getResultList();
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
		session.persist(entity);
		session.createQuery("insert DanhSachXinNghiEntity set trang_thai = 'Chờ Phê Duyệt'").executeUpdate();
	}
	
	@Override
	public void themNhap(DanhSachXinNghiEntity entity) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(entity);
		session.createQuery("insert DanhSachXinNghiEntity set trang_thai = 'Nháp'").executeUpdate();
	}

	@Override
	public void suaNhap(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery("update DanhSachXinNghiEntity set trang_thai = 'Nháp' where ma_don =" + entity.getMa_don()).executeUpdate();
	}
	
	@Override
	public void suaDon(DanhSachXinNghiEntity entity) {
		Session session = (Session) sessionFactory.getCurrentSession();
		session.update(entity);
		session.createQuery("update DanhSachXinNghiEntity set trang_thai = 'Chờ Phê Duyệt' where ma_don =" + entity.getMa_don()).executeUpdate();
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
	       DanhSachXinNghiEntity  entity = (DanhSachXinNghiEntity) session.get(DanhSachXinNghiEntity.class, new Integer(id));
	       if(null !=  entity){
	           session.delete( entity);
	       }
	   }

}

package fasttrackse.a1702.fbms.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import fasttrackse.a1702.fbms.model.entity.DanhGiaNgangHang;

@Repository
public class DanhGiaNgangHangImpl implements DanhGiaNgangHangDAO {

	@Autowired(required = true)

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void luuDanhGia(DanhGiaNgangHang danhGiaNgangHang) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(danhGiaNgangHang);

	}

	
	
/*	public List<DanhGiaNgangHang> DSDanhGia() {

		Session session = this.sessionFactory.getCurrentSession();
		List<DanhGiaNgangHang> DanhSach = session.createQuery("from DanhGiaNgangHang").list();
		return DanhSach;
	}*/

	@Override
	public List<DanhGiaNgangHang> DSDanhGia() {
		System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<DanhGiaNgangHang> cq = cb.createQuery(DanhGiaNgangHang.class);
		Root<DanhGiaNgangHang> root = cq.from(DanhGiaNgangHang.class);
		cq.select(root).where(cb.equal(root.get("nguoiDanhGia"), 1));;
		Query<DanhGiaNgangHang> query = session.createQuery(cq);
		return query.getResultList();
	}


	/*public List<DanhGiaNgangHang> DanhSach() {
		// TODO Auto-generated method stub
		return null;
	}
*/
}

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

import fasttrackse.a1702.fbms.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.model.entity.PhanCong;

@Repository
public class PhanCongDanhGiaImpl implements PhanCongDanhGiaDAO {

	@Autowired(required = true)

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void luuPhanCong(PhanCong phanCong) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(phanCong);

	}

	
	@Override
	public List<HoSoNhanVien> DSNhanVien() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder cb = session.getCriteriaBuilder();
		CriteriaQuery<HoSoNhanVien> cq = cb.createQuery(HoSoNhanVien.class);
		Root<HoSoNhanVien> root = cq.from(HoSoNhanVien.class);
		cq.select(root).where(cb.equal(root.get("phongBan"), "FFSE"));;
		Query<HoSoNhanVien> query = session.createQuery(cq);
		System.out.println(query);
		return query.getResultList();
		
	}

}

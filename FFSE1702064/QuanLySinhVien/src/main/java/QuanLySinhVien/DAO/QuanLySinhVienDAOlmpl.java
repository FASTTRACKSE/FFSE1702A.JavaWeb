package QuanLySinhVien.DAO;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import QuanLySinhVien.entiny.SinhVien;

@Repository
public class QuanLySinhVienDAOlmpl implements QuanLySinhVienDAO{
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional
	public void addStudent(SinhVien SinhVien) {
		Session session = sessionFactory.getCurrentSession();
		session.persist(SinhVien);
		
	}
	@Transactional
	 public void updateStudent(SinhVien SinhVien) {
		 Session session = sessionFactory.getCurrentSession();
		 session.update(SinhVien);
		
	}
	 @Transactional
	public void removeStudent(int id) {
		Session session = sessionFactory.getCurrentSession();
		SinhVien SinhVien = (SinhVien) session.get(SinhVien.class, new Integer(id));
		if(null != SinhVien){
			session.delete(SinhVien);
		}
		
	}
	 @Transactional
	 @SuppressWarnings("unchecked")
		public List<SinhVien> listStudent(Integer offset, Integer maxResult) {
			@SuppressWarnings("deprecation")
			List<SinhVien> sinhVienList = sessionFactory.getCurrentSession().createCriteria(SinhVien.class)
					.setFirstResult(offset != null ? offset : 0).setMaxResults(maxResult != null ? maxResult : 10)
					.list();
			return sinhVienList;
		

	}
	@Transactional
	 public SinhVien findById(final int id) {
		 Session session = sessionFactory.getCurrentSession();
		 return session.get(SinhVien.class, new Integer(id));
	}
	 @SuppressWarnings("deprecation")
	@Transactional
	public Long count() {
		 return (Long) sessionFactory.getCurrentSession().createCriteria(SinhVien.class)
					.setProjection(Projections.rowCount()).uniqueResult();
	}

	
}

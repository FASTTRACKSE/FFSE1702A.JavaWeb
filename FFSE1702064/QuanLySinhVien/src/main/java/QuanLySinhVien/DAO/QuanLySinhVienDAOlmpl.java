package QuanLySinhVien.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
	public  List<SinhVien> listStudent() {
		Session session = this.sessionFactory.getCurrentSession();
		List<SinhVien> listStudent = session.createQuery("from SinhVien").list();
		return listStudent;
	}
	@Transactional
	 public SinhVien findById(final int id) {
		 Session session = sessionFactory.getCurrentSession();
		 return session.get(SinhVien.class, new Integer(id));
	}
	
}

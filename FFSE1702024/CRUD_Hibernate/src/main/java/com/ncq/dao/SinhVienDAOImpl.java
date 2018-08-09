package com.ncq.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ncq.dao.SinhVienDAO;
import com.ncq.model.Lop;
import com.ncq.model.SinhVien;

@Repository
public class SinhVienDAOImpl implements SinhVienDAO{
	@Autowired
	 private SessionFactory sessionFactory;
	
	public void addSinhVien(SinhVien sinhvien) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.persist(sinhvien);
	}

	
	public void updateSinhVien(SinhVien sinhvien) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(sinhvien);
	}

	
	public SinhVien getSinhVienId(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public void removeSinhVien(final SinhVien sinhvien) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.remove(sinhvien);
	}

	
	public List<SinhVien> listSinhVien() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		List<SinhVien> sinhvienList = session.createQuery("from SinhVien",SinhVien.class).list();
		return sinhvienList;
	}
	
	public List<Lop> getLop() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		List<Lop> lopList = session.createQuery("from Lop",Lop.class).list();
		return lopList;
	}
	
	public SinhVien findById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(SinhVien.class, id);
	}


}

package fasttrackse.a1702.fbms.model.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import fasttrackse.a1702.fbms.model.entity.TuDanhGia;

@Repository
public class TuDanhGiaDAOImpl implements TuDanhGiaDAO {
	
	@Autowired(required = true)

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void luuDanhGia(TuDanhGia tuDanhGia) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(tuDanhGia);

	}

	@Override
	public TuDanhGia xemNhap(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		TuDanhGia tuDanhGia = (TuDanhGia) session.get(TuDanhGia.class, id);
		return tuDanhGia;

	}
	
	@Override
	public void suaNhap(TuDanhGia tuDanhGia) {
		Session session = sessionFactory.getCurrentSession();
		session.update(tuDanhGia);
		
	}

	@Override
	public void xoaNhap(int id) {
		Session session = sessionFactory.getCurrentSession();
		session.remove(id);
		
	}

			
	@Override
	public void ketQua(TuDanhGia tuDanhGia) {
		// TODO Auto-generated method stub 
		
	}

}

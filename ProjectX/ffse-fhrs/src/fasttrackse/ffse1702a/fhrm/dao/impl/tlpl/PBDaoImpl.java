package fasttrackse.ffse1702a.fhrm.dao.impl.tlpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fhrm.dao.tlpl.PBDao;
import fasttrackse.ffse1702a.fhrm.entity.tlpl.PB;



@Repository
@Transactional
public class PBDaoImpl implements PBDao{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void save(PB phongban) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(phongban);
	}

	@Override
	public PB getById(String maPhongBan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(PB.class, maPhongBan);
	}

	@Override
	public List<PB> getAll() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from PB",PB.class).list();
	}

	@Override
	public void update(PB phongban) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String maPhongBan) {
		// TODO Auto-generated method stub
		
	}
}

package fasttrackse.ffse1702a.fhrm.dao.impl.tlpl;

import java.util.List;

import org.hibernate.query.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



import fasttrackse.ffse1702a.fhrm.dao.tlpl.HoSoDao;
import fasttrackse.ffse1702a.fhrm.entity.tlpl.HoSo;

@Repository
@Transactional
public class HoSoDaoImpl implements HoSoDao{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void save(HoSo hoso) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(hoso);
	}

	@Override
	public HoSo getById(int maNhanVien) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(HoSo.class, maNhanVien);
	}

	@Override
	public List<HoSo> getAll() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from HoSo where isDelete =0",HoSo.class).list();
	}

	@Override
	public void update(HoSo hoso) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(hoso);

	}

	@Override
	public void delete(int maNhanVien) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		HoSo hoso= session.get(HoSo.class, maNhanVien);
		hoso.setIsDelete(1);
		session.update(hoso);
	}

	@Override
	public List<HoSo> listHoSo(int page) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		 Query<HoSo> query=  session.createQuery("from HoSo",HoSo.class);
		 query.setFirstResult((page-1)*3);
		 query.setMaxResults(3);
		 List<HoSo> list =query.list();
		return list;
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
	    Query<HoSo> query =session.createQuery("from HoSo",HoSo.class);
	    return query.list().size();
	}
}

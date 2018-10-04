package fasttrackse.ffse1702a.fhrm.dao.impl.tlpl;

import java.util.List;

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
		
	}

	@Override
	public HoSo getById(String maNhanVien) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(HoSo.class, maNhanVien);
	}

	@Override
	public List<HoSo> getAll() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from HoSo",HoSo.class).list();
	}

	@Override
	public void update(HoSo hoso) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String maNhanVien) {
		// TODO Auto-generated method stub
		
	}
}

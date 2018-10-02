package fasttrackse.ffse1702a.fhrm.dao.impl.tlpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fhrm.dao.tlpl.VaiTroDao;
import fasttrackse.ffse1702a.fhrm.entity.tlpl.VaiTro;


@Repository
@Transactional
public class VaiTroDaoImpl implements VaiTroDao{
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public void save(VaiTro vaitro) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(vaitro);
	}

	@Override
	public VaiTro getById(String maVaiTro) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		return session.get(VaiTro.class, maVaiTro);
	}

	@Override
	public List<VaiTro> getAll() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from VaiTro",VaiTro.class).list();
	}

	@Override
	public void update(VaiTro vaitro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String maVaiTro) {
		// TODO Auto-generated method stub
		
	}
}

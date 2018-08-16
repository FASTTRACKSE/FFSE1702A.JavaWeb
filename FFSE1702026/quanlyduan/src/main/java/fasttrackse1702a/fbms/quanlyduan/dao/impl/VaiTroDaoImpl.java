package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.VaiTroDao;
import fasttrackse1702a.fbms.quanlyduan.entity.VaiTro;

@Repository
@Transactional
public class VaiTroDaoImpl implements VaiTroDao {
	@Autowired
	SessionFactory sessionFactory;
	@Override
	public void save(VaiTro vaitro) {
		Session session=sessionFactory.getCurrentSession();
		session.save(vaitro);	
	}
	@Override
	public VaiTro getById(String maVaiTro) {
		Session session=sessionFactory.getCurrentSession();
		return session.get(VaiTro.class,maVaiTro);		
	}
	@Override
	public List<VaiTro> getAll() {
		Session session=sessionFactory.getCurrentSession();
		return session.createQuery("from VaiTro where isDelete =0",VaiTro.class).list();
	}
	@Override
	public void update(VaiTro vaitro) {
		Session session=sessionFactory.getCurrentSession();
		session.update(vaitro);
		
	}
	@Override
	public void delete(String maVaiTro) {
		Session session=sessionFactory.getCurrentSession();
		VaiTro vaiTro=session.get(VaiTro.class,maVaiTro);
		vaiTro.setIsDelete(1);
		session.update(vaiTro);
	}
	

}
package fasttrackse1702a.fbms.quanlyduan.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse1702a.fbms.quanlyduan.dao.UserDao;
import fasttrackse1702a.fbms.quanlyduan.entity.User;

@Repository
@Transactional(rollbackFor = Exception.class)
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFatory;

	public User loadUserByUsername(final String username) {
		Session session=sessionFatory.getCurrentSession();
			return session.createQuery("from User where username='"+username+"'", User.class).getSingleResult();

	}
}

package springhibernate.dao;

import springhibernate.entities.*;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

@Transactional(rollbackFor = Exception.class)
public class UserDAO {

	private SessionFactory sessionFactory;
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void create(User user) {
		 Session session = this.sessionFactory.getCurrentSession();
		 session.save(user);
	}

	public List<User> findAll() {
		 Session session = this.sessionFactory.getCurrentSession();
		 return session.createQuery("FROM User", User.class).getResultList();
	}

	public User findById(int id) {
		 Session session = this.sessionFactory.getCurrentSession();
		User u = session.get(User.class, id);
		return u;
	}

	public void delete(int id) {
		 Session session = this.sessionFactory.getCurrentSession();
		 session.delete(findById(id));
	}
}

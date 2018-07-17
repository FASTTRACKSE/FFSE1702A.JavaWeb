package springmvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import springmvc.entity.Student;

@Transactional(rollbackFor = Exception.class)
public class StudentDAO {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public void create(Student student) {
		Session session = this.sessionFactory.getCurrentSession();
		session.save(student);
	}

	@SuppressWarnings("unchecked")
	public List<Student> findAll() {
//		Session session = this.sessionFactory.getCurrentSession();
//		List<Student> list = session.createCriteria(Student.class).list();
		
		Session session = sessionFactory.openSession();
		
		ArrayList<Student> list = (ArrayList<Student>) session.createQuery("from Student").list();
		return list;
	}

	public Student findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student u = session.get(Student.class, id);
		return u;
	}

	public void delete(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(findById(id));
	}
}

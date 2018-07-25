package springmvc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.entity.Course;
import springmvc.entity.Student;

@Repository
@Transactional(rollbackFor = Exception.class)
public class StudentDAOimpl implements StudentDAO{

	@Autowired
	private SessionFactory sessionFactory;

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
		
		List<Student> list = session.createQuery("from Student").list();
		
		session.close();
		return list;
	}
	


	public Student findById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Student u = (Student) session.get(Student.class, id);
		return u;
	}

	public void delete(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		session.delete(findById(id));
	}
	
	
	public List<Course> loadAllCourse(){
		Session session = sessionFactory.getCurrentSession();
		List<Course> list = session.createQuery("from Course").list();
		return list;
	}
	
	public void update(Student student) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(student);
	}

	public List<Student> findAllForPaging(int startPosition,int maxResult){
		Session session = this.sessionFactory.getCurrentSession();
		
		Query q = session.createQuery("from Student");
		q.setFirstResult(startPosition);
		q.setMaxResults(maxResult);
		
		return q.list();
		
	}
}

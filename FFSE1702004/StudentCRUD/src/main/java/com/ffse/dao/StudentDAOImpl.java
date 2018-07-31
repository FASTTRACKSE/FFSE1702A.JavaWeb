package com.ffse.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ffse.entities.Student;
import com.ffse.entities.StudentClass;

@Repository
@Transactional(rollbackFor = Exception.class)
public class StudentDAOImpl implements StudentDAO {
	@Autowired
	private SessionFactory sessionFactory;

	public List<Student> getAll(int page) {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query<?> query=session.createQuery("from Student",Student.class);
		query.setFirstResult((page-1)*3);
		query.setMaxResults(3);
		System.out.print(page);
		
		List<Student> list = (List<Student>) query.list();
		return list;
	}
	
	public long totalRecords() {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = "SELECT count(*) FROM Student";
		Query<?> query = session.createQuery(queryString); 
		return (Long) query.uniqueResult();
	}

	public List<Student> findAll() {
		Session session = this.sessionFactory.getCurrentSession();
		  return  session.createQuery("FROM Student", Student.class).getResultList();
	}
	public void save(final Student student) {
		Session session = this.sessionFactory.getCurrentSession();
	    session.save(student);
	}
	public Student findById(final int id) {
		Session session = this.sessionFactory.getCurrentSession();
	    return session.get(Student.class, id);
	}
	public List<StudentClass> listclass(){
		Session session = this.sessionFactory.getCurrentSession();
		  return  session.createQuery("FROM StudentClass", StudentClass.class).getResultList();
	}
	public void update(final Student student) {
		Session session = this.sessionFactory.getCurrentSession();
	    session.update(student);
	}
	 public void delete(final int id ) {
		 Session session = this.sessionFactory.getCurrentSession();
		 Student student=findById(id);
		 session.remove(student);
	 }

}

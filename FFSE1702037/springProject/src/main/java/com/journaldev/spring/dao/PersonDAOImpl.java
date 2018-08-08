package com.journaldev.spring.dao;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.journaldev.spring.model.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {

	private static final Logger logger = LoggerFactory.getLogger(PersonDAOImpl.class);
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addPerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Person saved successfully, Person Details=" + p);
	}

	@Override
	public void updatePerson(Person p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		logger.info("Person updated successfully, Person Details=" + p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Person> listPersons(int position) {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Person");
		query.setFirstResult((position - 1) * 2);
		query.setMaxResults(2);
		List<Person> personsList = query.list();

		for (Person p : personsList) {
			logger.info("Person List::" + p);
		}
		return personsList;
	}

	@Override
	public Person getPersonById(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		Person p = (Person) session.load(Person.class, new Integer(id));
		logger.info("Person loaded successfully, Person details=" + p);
		return p;
	}

	@Override
	public void removePerson(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		Person p = (Person) session.load(Person.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Person deleted successfully, person details=" + p);
	}

	@Override
	public BigInteger countPersons() {
		Session session = this.sessionFactory.getCurrentSession();
		String queryString = "SELECT Count(*) FROM person";
		Query query = session.createSQLQuery(queryString);
		return (BigInteger) query.uniqueResult();
	}
   @SuppressWarnings("unchecked")
   public List<Person> getByLop(int idLop){
	   Session session = this.sessionFactory.getCurrentSession();
	   return session.createQuery("from Person where Malop="+idLop).list();
	   
   }
}
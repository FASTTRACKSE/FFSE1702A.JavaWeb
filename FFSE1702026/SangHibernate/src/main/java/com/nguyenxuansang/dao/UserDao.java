package com.nguyenxuansang.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.nguyenxuansang.entities.Users;

@Repository
@Transactional(rollbackFor = Exception.class)
public class UserDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Users> getAll(){
		Session session= this.sessionFactory.getCurrentSession();
		return session.createQuery("from Users",Users.class).list();
	}
	public void save(Users user) {
		Session session= this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);;
	}
	public void update(Users user) {
		Session session= this.sessionFactory.getCurrentSession();
		session.update(user);
	}
	public void delete(Users user) {
		Session session= this.sessionFactory.getCurrentSession();
		session.delete(user);
	}
	public Users findById(int id) {
		Session session= this.sessionFactory.getCurrentSession();
		return session.get(Users.class,id);
	}

}

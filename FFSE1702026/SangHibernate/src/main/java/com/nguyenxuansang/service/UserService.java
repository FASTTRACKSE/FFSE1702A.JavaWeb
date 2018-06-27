package com.nguyenxuansang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nguyenxuansang.dao.UserDao;
import com.nguyenxuansang.entities.Users;

@Service
public class UserService {

	@Autowired
	UserDao userDao;
	
	public void save(Users user) {
		userDao.save(user);
		
	}
	public void update(Users user) {
		userDao.update(user);
	}
	public void delete(Users user) {
		userDao.delete(user);
	}
	public Users findById(int id) {
		return userDao.findById(id);
	}
	public List<Users> getAll(){
		return userDao.getAll();
	}
}

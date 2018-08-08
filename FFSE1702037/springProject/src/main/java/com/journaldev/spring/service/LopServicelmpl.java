package com.journaldev.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.LopDAO;
import com.journaldev.spring.model.Lop;

@Service
public class LopServicelmpl implements LopService {
	@Autowired
	private LopDAO lopDAO;

	@Override
	@Transactional
	public List<Lop> listLop() {
		return this.lopDAO.listLop();
	}

	@Override
	@Transactional
	public Lop getLopById(int id) {
		return this.lopDAO.getLopById(id);
	}

}

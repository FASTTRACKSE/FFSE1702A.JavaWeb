package com.journaldev.spring.dao;


import java.util.List;


import com.journaldev.spring.model.Lop;

public interface LopDAO {

	public List<Lop> listLop();
	public Lop getLopById(int id);


	}
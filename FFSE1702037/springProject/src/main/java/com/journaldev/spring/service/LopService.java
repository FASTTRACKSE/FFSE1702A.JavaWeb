package com.journaldev.spring.service;

import java.util.List;


import com.journaldev.spring.model.Lop;

public interface LopService {

	public List<Lop> listLop();
	public Lop getLopById(int id);


	
}
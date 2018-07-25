package com.journaldev.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.journaldev.spring.dao.LopHocDAO;
import com.journaldev.spring.model.LopHoc;

@Service
public class LopHocServiceImpl implements LopHocService {

	@Autowired(required=true)
	private LopHocDAO LopHocDAO;

	
	@Override
	@Transactional
	public List<LopHoc> listLopHoc() {
		return this.LopHocDAO.listLopHoc();
	}
}

package com.ncq.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ncq.dao.SinhVienDAO;
import com.ncq.model.Lop;
import com.ncq.model.SinhVien;
import com.ncq.service.SinhVienService;

@Service
public class SinhVienServiceImpl implements SinhVienService{
	
	@Autowired
	private SinhVienDAO sinhvienDao;
	public void setsinhvienDAO(SinhVienDAO sinhvienDao) {
		this.sinhvienDao = sinhvienDao;
	}
	@Override
	@Transactional
	public void addSinhVien(SinhVien sinhvien) {
		// TODO Auto-generated method stub
		sinhvienDao.addSinhVien(sinhvien);;
	}
	@Override
	@Transactional
	public void updateSinhVien(SinhVien sinhvien) {
		// TODO Auto-generated method stub
		sinhvienDao.updateSinhVien(sinhvien);
	}
	@Override
	@Transactional
	public SinhVien getSinhVienId(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	@Transactional
	public void removeSinhVien(int id) {
		// TODO Auto-generated method stub
		SinhVien sinhvien = sinhvienDao.findById(id);
		if(sinhvien != null) {
			sinhvienDao.removeSinhVien(sinhvien);
		}
		
	}

	@Override
	@Transactional
	public List<SinhVien> listSinhVien() {
		return this.sinhvienDao.listSinhVien();
	}
	@Override
	@Transactional
	public List<Lop> getLop() {
		return this.sinhvienDao.getLop();
	}
	@Override
	@Transactional
	public SinhVien findById(int id) {
		// TODO Auto-generated method stub
		return sinhvienDao.findById(id);
	}

}

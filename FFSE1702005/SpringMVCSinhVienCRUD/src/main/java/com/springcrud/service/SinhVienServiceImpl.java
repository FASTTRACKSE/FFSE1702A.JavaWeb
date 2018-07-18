package com.springcrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.springcrud.dao.SinhVienDao;

import com.springcrud.entity.SinhVienEntity;

@Service
public class SinhVienServiceImpl implements SinhVienService{

	@Autowired
	private SinhVienDao Dao;
	
	public void setSinhVienDao(SinhVienDao Dao) {
        this.Dao = Dao;
    }
	
		@Override
	    @Transactional
	    public void themSinhVien(SinhVienEntity entity) {
	        Dao.themSinhVien(entity);
	    }
	 
	    @Override
	    @Transactional
	    public void suaSinhVien(SinhVienEntity entity) {
	        Dao.suaSinhVien(entity);
	    }
	 
	    @Override
	    @Transactional
	    public List<SinhVienEntity> danhSachSinhVien() {
	        return this.Dao.danhSachSinhVien();
	    }
	 
	    @Override
	    @Transactional
	    public SinhVienEntity layID(int id) {
	        return Dao.layID(id);
	    }
	 
	    @Override
	    @Transactional
	    public void xoaSinhVien(int id) {
	        Dao.xoaSinhVien(id);
	    }
}

package com.springcrud.dao;

import java.util.List;

import com.springcrud.entity.SinhVienEntity;

public interface SinhVienDao {
	
	public void themSinhVien(SinhVienEntity entity);
	   
    public void suaSinhVien(SinhVienEntity entity);
   
    public SinhVienEntity layID(int id);
   
    public void xoaSinhVien(int id);
   
    public List<SinhVienEntity> danhSachSinhVien();

}

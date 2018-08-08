package com.springcrud.service;

import java.util.List;

import com.springcrud.entity.SinhVienEntity;
import com.springcrud.entity.LopHocEntity;

public interface SinhVienService {
	
	public void themSinhVien(SinhVienEntity entity);
	   
    public void suaSinhVien(SinhVienEntity entity);
   
    public SinhVienEntity layID(int id);
   
    public void xoaSinhVien(int id);
   
    public List<SinhVienEntity> danhSachSinhVien(int page);
    
    public long totalRecords();
    
    public List<LopHocEntity> danhSachLop();
    
    public LopHocEntity layMaLop(int id);

}

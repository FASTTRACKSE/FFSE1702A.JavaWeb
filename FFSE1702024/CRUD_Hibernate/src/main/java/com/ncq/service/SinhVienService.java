package com.ncq.service;

import java.util.List;

import com.ncq.model.Lop;
import com.ncq.model.SinhVien;

public interface SinhVienService {
	public void addSinhVien(SinhVien sinhvien);
	
	public void updateSinhVien(SinhVien sinhvien);
	
	public SinhVien getSinhVienId(int id);
	
	public void removeSinhVien(int id);
	
	public List<SinhVien> listSinhVien();
    public SinhVien findById(int id);

    public List<Lop> getLop(); 

}

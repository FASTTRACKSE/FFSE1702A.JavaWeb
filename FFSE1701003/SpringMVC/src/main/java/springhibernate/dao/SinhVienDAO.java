package springhibernate.dao;

import java.util.List;

import springhibernate.entities.SinhVien;

public interface SinhVienDAO {
	
	public void Save(SinhVien sv);
	
	public List<SinhVien> list();
	
	public void updateSinhVien(SinhVien sv);
	
	public void deleteSinhVien(int id);
	
	public SinhVien getSinhVienById(int id);
}

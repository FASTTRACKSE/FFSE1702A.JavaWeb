package namdv.service;

import java.util.List;

import namdv.model.entities.SinhVien;

public interface SinhVienService {
	public void addSinhVien(SinhVien sv);

	public void updateSinhVien(SinhVien sv);

	public List<SinhVien> getAllSinhVien();

	public SinhVien getSinhVienById(int id);

	public void deleteSinhVien(int id);
}

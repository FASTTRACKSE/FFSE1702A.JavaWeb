package namdv.model.dao;

import java.util.List;

import namdv.model.entities.SinhVien;

public interface SinhVienDAO {

	public void addSinhVien(SinhVien sv);

	public void updateSinhVien(SinhVien sv);

	public List<SinhVien> listSinhVien();

	public SinhVien getSinhVienById(int id);

	public void deleteSinhVien(int id);
}

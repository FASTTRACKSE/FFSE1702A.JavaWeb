package QuanLySinhVien.DAO;

import java.util.List;


import QuanLySinhVien.entiny.SinhVien;

public interface QuanLySinhVienDAO{
	
	public void addStudent(SinhVien SinhVien);
	
	public void updateStudent(SinhVien SinhVien);
	
	public void removeStudent(int id);
	
	public List<SinhVien> listStudent();
	
	public SinhVien findById(int id);
	
}

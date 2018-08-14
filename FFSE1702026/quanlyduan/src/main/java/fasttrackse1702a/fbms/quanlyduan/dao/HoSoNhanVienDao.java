package fasttrackse1702a.fbms.quanlyduan.dao;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.HoSoNhanVien;

public interface HoSoNhanVienDao {
	
	public List<HoSoNhanVien> getAll();
	public HoSoNhanVien getByID(int idNhanVien);
}

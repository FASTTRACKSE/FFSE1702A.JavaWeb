package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.HoSoNhanVien;

public interface HoSoNhanVienService {
	public List<HoSoNhanVien> getAll();
	public HoSoNhanVien getByID(int idNhanVien);
}

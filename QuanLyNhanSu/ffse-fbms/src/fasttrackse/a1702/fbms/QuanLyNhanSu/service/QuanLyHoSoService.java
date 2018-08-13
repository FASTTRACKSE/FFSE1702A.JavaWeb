package fasttrackse.a1702.fbms.QuanLyNhanSu.service;

import java.util.List;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;

public interface QuanLyHoSoService {

	public HoSoNhanVien getHoSoNhanVienById(int maNhanVien);

	public List<HoSoNhanVien> getHoSoByPhongBan(String maPhongBan);

	public List<HoSoNhanVien> getAllHoSo();

	public void addHoSoNhanVien(HoSoNhanVien hsnv);

	public void updateHoSoNhanVien(HoSoNhanVien hsnv);

	public void deleteHoSoNhanVien(int maNhanVien);

	public String getAutoId();

}

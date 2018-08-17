package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service;

import java.util.List;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;

public interface QuanLyHoSoService {

	public HoSoNhanVien getHoSoNhanVienById(int maNhanVien);

	public List<HoSoNhanVien> getHoSoByPhongBan(String maPhongBan);

	public List<HoSoNhanVien> getAllHoSo();

	public List<HoSoNhanVien> getAllHoSo(int INITIAL, int RECORD_SIZE);

	public void addHoSoNhanVien(HoSoNhanVien hsnv);

	public void updateHoSoNhanVien(HoSoNhanVien hsnv);

	public void deleteHoSoNhanVien(int maNhanVien);

	public String getAutoId();

}

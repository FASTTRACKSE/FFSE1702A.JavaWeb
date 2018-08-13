package fasttrackse.a1702.fbms.QuanLyNhanSu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuanLyHoSoDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

@Service
public class QuanLyHoSoServiceImpl implements QuanLyHoSoService {

	@Autowired
	private QuanLyHoSoDAO quanLyHoSoDAO;

	@Override
	@Transactional
	public HoSoNhanVien getHoSoNhanVienById(int maNhanVien) {
		return this.quanLyHoSoDAO.getHoSoNhanVienById(maNhanVien);
	}

	@Override
	@Transactional
	public List<HoSoNhanVien> getAllHoSo() {
		return this.quanLyHoSoDAO.getAllHoSo();
	}

	@Override
	@Transactional
	public List<HoSoNhanVien> getHoSoByPhongBan(String maPhongBan) {
		return this.quanLyHoSoDAO.getHoSoByPhongBan(maPhongBan);
	}

	@Override
	@Transactional
	public void addHoSoNhanVien(HoSoNhanVien hsnv) {
		this.quanLyHoSoDAO.addHoSoNhanVien(hsnv);
	}

	@Override
	@Transactional
	public void updateHoSoNhanVien(HoSoNhanVien hsnv) {
		this.quanLyHoSoDAO.updateHoSoNhanVien(hsnv);

	}

	@Override
	@Transactional
	public void deleteHoSoNhanVien(int maNhanVien) {
		this.quanLyHoSoDAO.deleteHoSoNhanVien(maNhanVien);
	}

	@Override
	@Transactional
	public String getAutoId() {
		return this.quanLyHoSoDAO.getAutoId();
	}
}

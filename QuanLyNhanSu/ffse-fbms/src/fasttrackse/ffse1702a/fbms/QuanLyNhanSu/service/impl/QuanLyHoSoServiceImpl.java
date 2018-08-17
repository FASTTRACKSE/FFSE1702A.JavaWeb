package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.QuanLyHoSoDAO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HoSoNhanVien;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHoSoService;

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

	@Override
	@Transactional
	public List<HoSoNhanVien> getAllHoSo(int INITIAL, int RECORD_SIZE, String GLOBAL_SEARCH_TERM, String[] COLUMN_NAME,
			String[] DIRECTION) {
		return this.quanLyHoSoDAO.getAllHoSo(INITIAL, RECORD_SIZE, GLOBAL_SEARCH_TERM, COLUMN_NAME, DIRECTION);
	}
}

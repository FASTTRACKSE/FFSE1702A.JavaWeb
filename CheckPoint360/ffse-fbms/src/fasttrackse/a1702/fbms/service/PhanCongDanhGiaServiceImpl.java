package fasttrackse.a1702.fbms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fasttrackse.a1702.fbms.model.dao.PhanCongDanhGiaDAO;
import fasttrackse.a1702.fbms.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.model.entity.PhanCong;

import java.util.List;
@Service
public class PhanCongDanhGiaServiceImpl implements PhanCongDanhGiaService {

	@Autowired
	private PhanCongDanhGiaDAO phanCongDanhGiaDAO;

	public void setdanhGiaNgangHangDAO(PhanCongDanhGiaDAO phanCongDanhGiaDAO) {
		this.phanCongDanhGiaDAO = phanCongDanhGiaDAO;
	}

	@Override
	@Transactional
	public void luuPhanCong(PhanCong phanCong) {
		phanCongDanhGiaDAO.luuPhanCong(phanCong);

	}

	
	@Transactional
	@Override
	public List<HoSoNhanVien> DSNhanVien() {
		return this.phanCongDanhGiaDAO.DSNhanVien();
	}
}

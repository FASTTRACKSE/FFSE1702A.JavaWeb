package fasttrackse.a1702.fbms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.model.dao.DanhGiaNgangHangDAO;
import fasttrackse.a1702.fbms.model.entity.DanhGiaNgangHang;
import java.util.List;
@Service
public class DanhGiaNgangHangServiceImpl implements DanhGiaNgangHangService {

	@Autowired
	private DanhGiaNgangHangDAO danhGiaNgangHangDAO;

	public void setdanhGiaNgangHangDAO(DanhGiaNgangHangDAO danhGiaNgangHangDAO) {
		this.danhGiaNgangHangDAO = danhGiaNgangHangDAO;
	}

	@Override
	@Transactional
	public void luuDanhGia(DanhGiaNgangHang danhGiaNgangHang) {
		danhGiaNgangHangDAO.luuDanhGia(danhGiaNgangHang);

	}

	
	@Transactional
	@Override
	public List<DanhGiaNgangHang> DanhSach() {
		return this.danhGiaNgangHangDAO.DSDanhGia();
	}
}

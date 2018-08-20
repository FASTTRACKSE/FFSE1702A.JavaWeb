package fasttrackse.a1702.fbms.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import fasttrackse.a1702.fbms.model.dao.TruongPhongDanhGiaDAO;
import fasttrackse.a1702.fbms.model.entity.TruongPhong;

@Service
public class TruongPhongDanhGiaServiceImpl implements TruongPhongDanhGiaService {

	@Autowired
	private TruongPhongDanhGiaDAO truongPhongDanhGiaDAO;

	public void setdanhGiaNgangHangDAO(TruongPhongDanhGiaDAO truongPhongDanhGiaDAO) {
		this.truongPhongDanhGiaDAO = truongPhongDanhGiaDAO;
	}

	@Override
	@Transactional
	public void luuDanhGia(TruongPhong truongPhong) {
		truongPhongDanhGiaDAO.luuDanhGia(truongPhong);

	}

	
}

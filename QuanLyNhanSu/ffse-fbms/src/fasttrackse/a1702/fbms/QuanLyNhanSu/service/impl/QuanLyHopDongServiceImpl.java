package fasttrackse.a1702.fbms.QuanLyNhanSu.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.QuanLyHopDongDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.HopDong;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.QuanLyHopDongService;
@Service
public class QuanLyHopDongServiceImpl implements QuanLyHopDongService {
	@Autowired
	private QuanLyHopDongDAO quanLyHopDongDAO;

	@Override
	@Transactional
	public void addThongTinHopDong(HopDong tthd) {
		this.quanLyHopDongDAO.addThongTinHopDong(tthd);
	}

	@Override
	@Transactional
	public void updateThongTinHopDong(HopDong tthd) {
		this.quanLyHopDongDAO.updateThongTinHopDong(tthd);
	}
}

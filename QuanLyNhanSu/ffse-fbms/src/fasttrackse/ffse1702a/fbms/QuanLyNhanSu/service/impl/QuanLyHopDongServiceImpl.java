package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.impl;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.QuanLyHopDongDAO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HopDong;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.QuanLyHopDongService;
@Service
public class QuanLyHopDongServiceImpl implements QuanLyHopDongService {
	@Autowired
	private QuanLyHopDongDAO quanLyHopDongDAO;

	@Override
	@Transactional
	public List<HopDong> getAllHopDong() {
		return this.quanLyHopDongDAO.getAllHopDong();
	}
	@Override
	@Transactional
	public List<HopDong> getHopDongByPhongBan(String maPhongBan) {
		return this.quanLyHopDongDAO.getHopDongByPhongBan(maPhongBan);
	}
	
	@Override
	@Transactional
	public void addHopDong(HopDong tthd) {
		this.quanLyHopDongDAO.addHopDong(tthd);
	}

	@Override
	@Transactional
	public void updateHopDong(HopDong tthd) {
		this.quanLyHopDongDAO.updateHopDong(tthd);
	}
	@Override
	@Transactional
	public String getAutoId() {
		return this.quanLyHopDongDAO.getAutoId();
	}
}
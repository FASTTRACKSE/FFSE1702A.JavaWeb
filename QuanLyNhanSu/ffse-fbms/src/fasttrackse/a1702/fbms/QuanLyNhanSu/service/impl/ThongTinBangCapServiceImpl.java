package fasttrackse.a1702.fbms.QuanLyNhanSu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.ThongTinBangCapDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ThongTinBangCap;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.ThongTinBangCapService;

@Service
public class ThongTinBangCapServiceImpl implements ThongTinBangCapService {
	@Autowired
	private ThongTinBangCapDAO thongTinBangCapDAO;

	@Override
	@Transactional
	public void addThongTinBangCap(ThongTinBangCap ttbc) {
		this.thongTinBangCapDAO.addThongTinBangCap(ttbc);
	}

	@Override
	@Transactional
	public void updateThongTinBangCap(ThongTinBangCap ttbc) {
		this.thongTinBangCapDAO.updateThongTinBangCap(ttbc);
	}

	@Override
	@Transactional
	public void deleteThongTinBangCap(int id) {
		this.thongTinBangCapDAO.deleteThongTinBangCap(id);
	}

}

package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao.ThongTinGiaDinhDAO;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinh;
import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.service.ThongTinGiaDinhService;

@Service
public class ThongTinGiaDinhServiceImpl implements ThongTinGiaDinhService {
	@Autowired
	private ThongTinGiaDinhDAO thongTinGiaDinhDAO;

	@Override
	@Transactional
	public void addThongTinGiaDinh(ThongTinGiaDinh ttgd) {
		this.thongTinGiaDinhDAO.addThongTinGiaDinh(ttgd);
	}

	@Override
	@Transactional
	public void updateThongTinGiaDinh(ThongTinGiaDinh ttgd) {
		this.thongTinGiaDinhDAO.updateThongTinGiaDinh(ttgd);
	}

	@Override
	@Transactional
	public void deleteThongTinGiaDinh(int id) {
		this.thongTinGiaDinhDAO.deleteThongTinGiaDinh(id);
	}

}

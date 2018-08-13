package fasttrackse.a1702.fbms.QuanLyNhanSu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.ThongTinGiaDinhDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ThongTinGiaDinh;

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

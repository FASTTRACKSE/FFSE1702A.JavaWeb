package fasttrackse.a1702.fbms.QuanLyNhanSu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao.LoaiHopDongDAO;
import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.LoaiHopDong;
import fasttrackse.a1702.fbms.QuanLyNhanSu.service.LoaiHopDongService;

@Service
public class LoaiHopDongServiceImpl  implements LoaiHopDongService{
	@Autowired
	private LoaiHopDongDAO loaiHopDongDAO;

	@Override
	@Transactional
	public List<LoaiHopDong> listLoaiHopDong() {
		return this.loaiHopDongDAO.listLoaiHopDong();
	}
}

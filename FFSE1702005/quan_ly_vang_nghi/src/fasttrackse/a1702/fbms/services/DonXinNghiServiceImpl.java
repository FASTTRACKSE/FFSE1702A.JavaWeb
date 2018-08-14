package fasttrackse.a1702.fbms.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.a1702.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.a1702.fbms.entities.LyDoEntity;
import fasttrackse.a1702.fbms.daos.DonXinNghiDao;

@Service
public class DonXinNghiServiceImpl implements DonXinNghiService {

	@Autowired
	private DonXinNghiDao Dao;

	@Override
	@Transactional
	public List<DanhSachXinNghiEntity> danhSachXinNghiChoDuyet() {
		return this.Dao.danhSachXinNghiChoDuyet();
	}

	@Override
	@Transactional
	public List<DanhSachXinNghiEntity> danhSachXinNghiDuyet() {
		return this.Dao.danhSachXinNghiDuyet();
	}

	@Override
	@Transactional
	public List<DanhSachXinNghiEntity> danhSachXinNghiNhap() {
		return this.Dao.danhSachXinNghiNhap();
	}

	@Override
	@Transactional
	public DanhSachXinNghiEntity layID(int id) {
		return Dao.layID(id);
	}

	@Override
    @Transactional
    public void xoaNhap(int id) {
        Dao.xoaNhap(id);
    }

	@Override
	@Transactional
	public void themDon(DanhSachXinNghiEntity entity) {
		Dao.themDon(entity);
	}
	
	@Override
	@Transactional
	public void themNhap(DanhSachXinNghiEntity entity) {
		Dao.themNhap(entity);
	}

	@Override
	@Transactional
	public void suaNhap(DanhSachXinNghiEntity entity) {
		Dao.suaNhap(entity);
	}
	
	@Override
	@Transactional
	public void suaDon(DanhSachXinNghiEntity entity) {
		Dao.suaDon(entity);
	}

	@Override
	@Transactional
	public List<LyDoEntity> danhSachLyDo() {
		return this.Dao.danhSachLyDo();
	}
}

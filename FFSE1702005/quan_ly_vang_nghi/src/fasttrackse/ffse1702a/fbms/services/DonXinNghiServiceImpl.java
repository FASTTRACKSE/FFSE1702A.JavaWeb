package fasttrackse.ffse1702a.fbms.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fasttrackse.ffse1702a.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.ffse1702a.fbms.entities.LyDoEntity;
import fasttrackse.ffse1702a.fbms.daos.DonXinNghiDao;

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
	public List<DanhSachXinNghiEntity> danhSachXinNghiNhap(int page) {
		return this.Dao.danhSachXinNghiNhap(page);
	}
	
	@Override
    @Transactional
    public long totalRecords() {
        return this.Dao.totalRecords();
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
	public void duyet(DanhSachXinNghiEntity entity) {
		Dao.duyet(entity);
	}
	
	@Override
	@Transactional
	public void tuChoi(DanhSachXinNghiEntity entity) {
		Dao.tuChoi(entity);
	}

	@Override
	@Transactional
	public List<LyDoEntity> danhSachLyDo() {
		return this.Dao.danhSachLyDo();
	}
}

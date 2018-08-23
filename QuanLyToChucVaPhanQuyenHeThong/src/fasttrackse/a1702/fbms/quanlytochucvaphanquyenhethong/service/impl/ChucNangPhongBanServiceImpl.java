package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.ChucNangPhongBanDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucNangPhongBan;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucNangPhongBanService;

@Service
public class ChucNangPhongBanServiceImpl implements ChucNangPhongBanService {

	@Autowired
	ChucNangPhongBanDao chucNangPhongBanDao;

	public ChucNangPhongBanDao getChucNangPhongBanDao() {
		return chucNangPhongBanDao;
	}

	public void setChucNangPhongBanDao(ChucNangPhongBanDao chucNangPhongBanDao) {
		this.chucNangPhongBanDao = chucNangPhongBanDao;
	}

	@Override
	public List<ChucNangPhongBan> findAll() {
		return chucNangPhongBanDao.findAll();
	}

	@Override
	public void addNew(String maPhongBan, List<String> maChucNang) {
		chucNangPhongBanDao.addNew(maPhongBan, maChucNang);
	}

	@Override
	public void update(String maPhongBan, List<String> maChucNang) {
		chucNangPhongBanDao.update(maPhongBan, maChucNang);
	}

	@Override
	public List<Object> findAllForPaging(int startPosition, int maxResult) {
		return chucNangPhongBanDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public List<Object> getMaChucNangByMaPhongBan(String maPhongBan) {
		return chucNangPhongBanDao.getMaChucNangByMaPhongBan(maPhongBan);
	}

	@Override
	public void delete(String maPhongBan) {
		chucNangPhongBanDao.delete(maPhongBan);
	}

}

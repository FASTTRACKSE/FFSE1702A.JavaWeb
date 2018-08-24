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
	public void addNew(ChucNangPhongBan cd) {
		chucNangPhongBanDao.addNew(cd);
	}

	@Override
	public void update(ChucNangPhongBan cd) {
		chucNangPhongBanDao.update(cd);
	}

	@Override
	public void delete(int id) {
		chucNangPhongBanDao.delete(id);
	}

	@Override
	public List<ChucNangPhongBan> findAllForPaging(int startPosition, int maxResult) {
		return chucNangPhongBanDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public ChucNangPhongBan findById(int id) {
		return chucNangPhongBanDao.findById(id);
	}

}

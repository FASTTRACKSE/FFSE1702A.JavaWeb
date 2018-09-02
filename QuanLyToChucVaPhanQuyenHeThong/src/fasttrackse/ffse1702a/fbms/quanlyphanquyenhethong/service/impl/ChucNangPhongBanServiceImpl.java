package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao.ChucNangPhongBanDao;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucNangPhongBan;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.ChucNangPhongBanService;

@Service
public class ChucNangPhongBanServiceImpl implements ChucNangPhongBanService {

	@Autowired
	private ChucNangPhongBanDao chucNangPhongBanDao;

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

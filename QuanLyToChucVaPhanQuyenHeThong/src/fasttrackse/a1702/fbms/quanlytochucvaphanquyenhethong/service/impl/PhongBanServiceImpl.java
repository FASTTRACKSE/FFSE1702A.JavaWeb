package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.PhongBanDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.PhongBan;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.PhongBanService;

@Service
public class PhongBanServiceImpl implements PhongBanService {

	@Autowired
	PhongBanDao phongBanDao;

	public PhongBanDao getPhongBanDao() {
		return phongBanDao;
	}

	public void setPhongBanDao(PhongBanDao phongBanDao) {
		this.phongBanDao = phongBanDao;
	}

	@Override
	public List<PhongBan> findAll() {
		return phongBanDao.findAll();
	}

	@Override
	public void addNew(PhongBan pb) {
		phongBanDao.addNew(pb);
	}

	@Override
	public void update(PhongBan pb) {
		phongBanDao.update(pb);
	}

	@Override
	public void delete(String maPhongBan) {
		phongBanDao.delete(maPhongBan);
	}

	@Override
	public List<PhongBan> findAllForPaging(int startPosition, int maxResult) {
		return phongBanDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public PhongBan findByMaPhongBan(String maPhongBan) {
		return phongBanDao.findByMaPhongBan(maPhongBan);
	}

}

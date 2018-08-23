package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.ChucDanhDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucDanh;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.ChucDanhService;

@Service
public class ChucDanhServiceImpl implements ChucDanhService {

	@Autowired
	ChucDanhDao chucDanhDao;

	public ChucDanhDao getChucDanhDao() {
		return chucDanhDao;
	}

	public void setChucDanhDao(ChucDanhDao chucDanhDao) {
		this.chucDanhDao = chucDanhDao;
	}

	@Override
	public List<ChucDanh> findAll() {
		return chucDanhDao.findAll();
	}

	@Override
	public void addNew(ChucDanh cd) {
		chucDanhDao.addNew(cd);
	}

	@Override
	public void update(ChucDanh cd) {
		chucDanhDao.update(cd);
	}

	@Override
	public void delete(String maChucDanh) {
		chucDanhDao.delete(maChucDanh);
	}

	@Override
	public List<ChucDanh> findAllForPaging(int startPosition, int maxResult) {
		return chucDanhDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public ChucDanh findByMaChucDanh(String maChucDanh) {
		return chucDanhDao.findByMaChucDanh(maChucDanh);
	}

}

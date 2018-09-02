package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao.ChucNangDao;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucNang;
import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service.ChucNangService;

@Service
public class ChucNangServiceImpl implements ChucNangService {

	@Autowired
	private ChucNangDao chucNangDao;

	@Override
	public List<ChucNang> list() {
		List<ChucNang> list = chucNangDao.list();
		return list;
	}

	@Override
	public void save(ChucNang cn) {
		chucNangDao.save(cn);
	}

	@Override
	public void update(ChucNang cn) {
		chucNangDao.update(cn);
	}

	@Override
	public void delete(String ma_chuc_nang) {
		chucNangDao.delete(ma_chuc_nang);
	}

	@Override
	public void active(String ma_chuc_nang) {
		chucNangDao.active(ma_chuc_nang);
	}

	@Override
	public ChucNang getChucNangByCode(String ma_chuc_nang) {
		ChucNang cn = chucNangDao.getChucNangByCode(ma_chuc_nang);
		return cn;
	}
	
	@Override
	public ChucNang findByMaChucNang(String ma_chuc_nang) {
		return null;
	}

	@Override
	public List<ChucNang> findAllForPaging(int startPosition, int maxResult) {
		return chucNangDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public List<ChucNang> findAll() {
		return chucNangDao.findAll();
	}
}

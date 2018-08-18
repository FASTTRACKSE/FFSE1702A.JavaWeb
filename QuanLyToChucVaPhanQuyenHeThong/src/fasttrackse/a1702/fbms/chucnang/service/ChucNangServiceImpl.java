package fasttrackse.a1702.fbms.chucnang.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import fasttrackse.a1702.fbms.chucnang.model.dao.ChucNangDao;
import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;

public class ChucNangServiceImpl implements ChucNangService {

	@Autowired
	ChucNangDao chucNangDao;

	public ChucNangDao getChucNangDao() {
		return chucNangDao;
	}

	public void setChucNangDao(ChucNangDao chucNangDao) {
		this.chucNangDao = chucNangDao;
	}

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

}

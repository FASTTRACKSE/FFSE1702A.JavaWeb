package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao.TaiKhoanDao;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.Login;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.TaiKhoan;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service.TaiKhoanService;
@Service
public class TaiKhoanServiceImpl implements TaiKhoanService{

	@Autowired
	TaiKhoanDao taiKhoanDao;
	
	public TaiKhoanDao getTaiKhoanDao() {
		return taiKhoanDao;
	}

	public void setTaiKhoanDao(TaiKhoanDao taiKhoanDao) {
		this.taiKhoanDao = taiKhoanDao;
	}

	@Override
	public List<TaiKhoan> findAll() {
		return taiKhoanDao.findAll();
	}

	@Override
	public void addNew(TaiKhoan cn) {
		taiKhoanDao.addNew(cn);
	}
	
	@Override
	public void update(TaiKhoan cn) {
		taiKhoanDao.update(cn);
	}

	@Override
	public void delete(String maNhanVien) {
		taiKhoanDao.delete(maNhanVien);
	}

	@Override
	public void active(String maNhanVien) {
		taiKhoanDao.active(maNhanVien);
	}

	@Override
	public List<TaiKhoan> findAllForPaging(int startPosition, int maxResult) {
		return taiKhoanDao.findAllForPaging(startPosition, maxResult);
	}

	@Override
	public TaiKhoan validateTaiKhoan(Login login) {
		return taiKhoanDao.validateTaiKhoan(login);
	}

	@Override
	public TaiKhoan findByTenDangNhap(String tenDangNhap) {
		return taiKhoanDao.findByTenDangNhap(tenDangNhap);
	}
}

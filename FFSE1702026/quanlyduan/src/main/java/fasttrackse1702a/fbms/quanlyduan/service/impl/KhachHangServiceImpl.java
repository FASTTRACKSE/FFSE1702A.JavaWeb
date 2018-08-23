package fasttrackse1702a.fbms.quanlyduan.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fasttrackse1702a.fbms.quanlyduan.dao.KhachHangDao;
import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;
import fasttrackse1702a.fbms.quanlyduan.service.KhachHangService;
@Service
public class KhachHangServiceImpl implements KhachHangService {
	@Autowired 
	KhachHangDao KhachHangDao;
	
	//Thêm mới ngôn ngữ
	@Override
	public void save(KhachHang khachHang) {
		this.KhachHangDao.save(khachHang);
		
	}

	@Override
	public KhachHang getById(String maKhachHang) {
		
		return this.KhachHangDao.getById(maKhachHang);
	}

	@Override
	public List<KhachHang> getAll() {
		
		return this.KhachHangDao.getAll();
	}

	@Override
	public void update(KhachHang khachHang) {
		this.KhachHangDao.update(khachHang);
		
	}

	@Override
	public void delete(String maKhachHang) {
		this.KhachHangDao.delete(maKhachHang);
		
	}
}

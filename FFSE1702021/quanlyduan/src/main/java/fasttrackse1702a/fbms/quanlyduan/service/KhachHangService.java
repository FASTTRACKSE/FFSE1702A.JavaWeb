package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.KhachHang;

public interface KhachHangService {

		public void save(KhachHang khachHang);
		public KhachHang getById(String maKhachHang);
		public List<KhachHang> getAll();
		public void update(KhachHang khachHang);
		public void delete(String maKhachHang);
	
}

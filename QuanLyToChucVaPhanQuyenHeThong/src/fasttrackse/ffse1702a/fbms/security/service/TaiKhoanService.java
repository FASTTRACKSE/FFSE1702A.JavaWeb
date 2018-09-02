package fasttrackse.ffse1702a.fbms.security.service;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.Login;
import fasttrackse.ffse1702a.fbms.security.entity.TaiKhoan;

public interface TaiKhoanService{
	public List<TaiKhoan> findAll();

	public void addNew(TaiKhoan cn);
	
	public void update(TaiKhoan cn);

	public void delete(String maNhanVien);

	public void active(String maNhanVien);
	
	public List<TaiKhoan> findAllForPaging(int startPosition,int maxResult);
	
	public TaiKhoan validateTaiKhoan(Login login);
	
	public TaiKhoan findByTenDangNhap(String tenDangNhap);
}

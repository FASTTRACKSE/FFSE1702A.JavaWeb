package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.Login;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.TaiKhoan;
@Service
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

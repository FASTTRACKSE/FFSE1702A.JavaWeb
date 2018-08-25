package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.Login;
import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.TaiKhoan;

public interface TaiKhoanDao {
	public List<TaiKhoan> findAll();

	public void addNew(TaiKhoan cn);
	
	public void update(TaiKhoan cn);

	public void delete(String tenDangNhap);

	public void active(String tenDangNhap);
	
	public List<TaiKhoan> findAllForPaging(int startPosition,int maxResult);
	
	public TaiKhoan validateTaiKhoan(Login login);
	
	public TaiKhoan findByMaNhanVien(String maNhanVien);
	
	public TaiKhoan findByTenDangNhap(String tenDangNhap);
}

package fasttrackse.a1702.fbms.taikhoan.service;

import java.util.List;

import org.springframework.stereotype.Service;

import fasttrackse.a1702.fbms.taikhoan.model.entities.Login;
import fasttrackse.a1702.fbms.taikhoan.model.entities.TaiKhoan;
@Service
public interface TaiKhoanService{
	public List<TaiKhoan> findAll();

	public void addNew(TaiKhoan cn);
	
	public void update(TaiKhoan cn);

	public void delete(String maNhanVien);

	public void active(String maNhanVien);
	
	public List<TaiKhoan> findAllForPaging(int startPosition,int maxResult);
	
	public TaiKhoan validateTaiKhoan(Login login);
}

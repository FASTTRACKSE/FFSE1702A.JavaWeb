package fasttrackse.a1702.fbms.taikhoan.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.taikhoan.model.entities.Login;
import fasttrackse.a1702.fbms.taikhoan.model.entities.TaiKhoan;

public interface TaiKhoanDao {
	public List<TaiKhoan> findAll();

	public void addNew(TaiKhoan cn);
	
	public void update(TaiKhoan cn);

	public void delete(String maNhanVien);

	public void active(String maNhanVien);
	
	public List<TaiKhoan> findAllForPaging(int startPosition,int maxResult);
	
	public TaiKhoan validateTaiKhoan(Login login);
}

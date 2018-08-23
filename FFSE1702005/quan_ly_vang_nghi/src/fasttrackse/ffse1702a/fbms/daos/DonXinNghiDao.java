package fasttrackse.ffse1702a.fbms.daos;

import java.util.List;

import fasttrackse.ffse1702a.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.ffse1702a.fbms.entities.LyDoEntity;

public interface DonXinNghiDao {

	public List<DanhSachXinNghiEntity> danhSachXinNghiChoDuyet();

	public List<DanhSachXinNghiEntity> danhSachXinNghiDuyet();

	public List<DanhSachXinNghiEntity> danhSachXinNghiNhap(int page);
	
	public long totalRecords();

	public DanhSachXinNghiEntity layID(int id);

	public void xoaNhap(int id);

	public void themDon(DanhSachXinNghiEntity entity);
	
	public boolean kiemTraNhanVienNgayNghiEntity (int maNhanVien);
	
	public void themNhap(DanhSachXinNghiEntity entity);

	public void suaNhap(DanhSachXinNghiEntity entity);
	
	public void suaDon(DanhSachXinNghiEntity entity);
	
	public void duyet(DanhSachXinNghiEntity entity);
	
	public void tuChoi(DanhSachXinNghiEntity entity);

	public List<LyDoEntity> danhSachLyDo();

}

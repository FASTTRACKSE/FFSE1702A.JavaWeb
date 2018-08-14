package fasttrackse.a1702.fbms.services;

import java.util.List;

import fasttrackse.a1702.fbms.entities.DanhSachXinNghiEntity;
import fasttrackse.a1702.fbms.entities.LyDoEntity;

public interface DonXinNghiService {
	
	public List<DanhSachXinNghiEntity> danhSachXinNghiChoDuyet();

	public List<DanhSachXinNghiEntity> danhSachXinNghiDuyet();
	
	public List<DanhSachXinNghiEntity> danhSachXinNghiNhap();
	
	public DanhSachXinNghiEntity layID(int id);
	
	public void xoaNhap(int id);
	
	public void themDon(DanhSachXinNghiEntity entity);
	
	public void themNhap(DanhSachXinNghiEntity entity);

	public void suaNhap(DanhSachXinNghiEntity entity);
	
	public void suaDon(DanhSachXinNghiEntity entity);

	public List<LyDoEntity> danhSachLyDo();
}

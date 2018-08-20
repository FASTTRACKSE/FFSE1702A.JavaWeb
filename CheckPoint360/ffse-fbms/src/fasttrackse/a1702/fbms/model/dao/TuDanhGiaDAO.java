package fasttrackse.a1702.fbms.model.dao;

import fasttrackse.a1702.fbms.model.entity.TuDanhGia;

public interface TuDanhGiaDAO {
	
	public void luuDanhGia(TuDanhGia tuDanhGia);
	public TuDanhGia xemNhap(int id);
	public void suaNhap(TuDanhGia tuDanhGia);
	public void xoaNhap(int id);
	public void ketQua(TuDanhGia tuDanhGia);
	
}

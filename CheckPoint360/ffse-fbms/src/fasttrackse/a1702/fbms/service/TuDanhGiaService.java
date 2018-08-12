package fasttrackse.a1702.fbms.service;

import fasttrackse.a1702.fbms.model.entity.TuDanhGia;

public interface TuDanhGiaService {
	public void luuDanhGia(TuDanhGia tuDanhGia);
	public TuDanhGia xemNhap(int id);
	public void suaNhap(TuDanhGia tuDanhGia);
	public void xoaNhap(int id);
	public void ketQua(TuDanhGia tuDanhGia);
}

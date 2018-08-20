package fasttrackse.a1702.fbms.service;

import fasttrackse.a1702.fbms.model.dao.DanhGiaNgangHangDAO;

public interface TuDanhGiaService {
	public void luuDanhGia(DanhGiaNgangHangDAO danhGiaNgangHangDAO);
	public DanhGiaNgangHangDAO xemNhap(int id);
	public void suaNhap(DanhGiaNgangHangDAO danhGiaNgangHangDAO);
	public void xoaNhap(int id);
	public void ketQua(DanhGiaNgangHangDAO danhGiaNgangHangDAO);
}

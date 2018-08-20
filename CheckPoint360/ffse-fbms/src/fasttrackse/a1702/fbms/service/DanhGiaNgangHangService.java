package fasttrackse.a1702.fbms.service;

import java.util.List;

import fasttrackse.a1702.fbms.model.entity.DanhGiaNgangHang;

public interface DanhGiaNgangHangService {
	public void luuDanhGia(DanhGiaNgangHang danhGiaNgangHang);
	public List<DanhGiaNgangHang> DanhSach();
}

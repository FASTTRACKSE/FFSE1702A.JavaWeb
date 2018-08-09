package fasttrackse.a1702.fbms.QuanLyNhanSu.service;

import java.util.List;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;

public interface QuanLyChucDanhService {
	public List<ChucDanh> listChucDanh();

	public void addChucDanh(ChucDanh p);

	public void updateChucDanh(ChucDanh p);

	public ChucDanh getChucDanhByMa(String maChucDanh);
}

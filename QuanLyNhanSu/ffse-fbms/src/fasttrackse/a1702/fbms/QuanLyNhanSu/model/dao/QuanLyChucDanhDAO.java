package fasttrackse.a1702.fbms.QuanLyNhanSu.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.QuanLyNhanSu.model.entity.ChucDanh;

public interface QuanLyChucDanhDAO {
	public List<ChucDanh> listChucDanh();
	public void addChucDanh(ChucDanh p);
	public void updateChucDanh(ChucDanh p);
	public ChucDanh getChucDanhByMa(String maChucDanh);
	public void removeChucDanh(String maChucDanh);
}

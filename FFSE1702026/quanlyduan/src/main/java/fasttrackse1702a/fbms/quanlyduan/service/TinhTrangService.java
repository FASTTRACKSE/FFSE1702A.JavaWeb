package fasttrackse1702a.fbms.quanlyduan.service;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;

public interface TinhTrangService {
	public void save(TinhTrang tinhTrang);
	public TinhTrang getById(String maTinhTrang);
	public List<TinhTrang> getAll();
	public void update(TinhTrang tinhTrang);
	public void delete(String maTinhTrang);
}

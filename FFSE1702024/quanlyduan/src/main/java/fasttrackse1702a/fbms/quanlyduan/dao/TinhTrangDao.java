package fasttrackse1702a.fbms.quanlyduan.dao;

import java.util.List;

import fasttrackse1702a.fbms.quanlyduan.entity.TinhTrang;

public interface TinhTrangDao {
	public void save(TinhTrang tinhTrang);
	public TinhTrang getById(String maTinhTrang);
	public List<TinhTrang> getAll();
	public void update(TinhTrang tinhTrang);
	public void delete(String maTinhTrang);
}


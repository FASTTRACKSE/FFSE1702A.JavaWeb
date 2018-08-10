package fasttrackse.a1702.fbms.chucnang.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.chucnang.model.entities.ChucNang;

public interface ChucNangDao {
	public List<ChucNang> list();

	public void save(ChucNang cn);

	public void update(ChucNang cn);

	public void delete(String ma_chuc_nang);

	public void active(String ma_chuc_nang);
	
	public ChucNang getChucNangByCode(String ma_chuc_nang);
}

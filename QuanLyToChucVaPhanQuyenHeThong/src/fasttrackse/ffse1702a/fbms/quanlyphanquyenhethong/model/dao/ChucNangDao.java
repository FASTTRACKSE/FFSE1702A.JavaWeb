package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucNang;

public interface ChucNangDao {
	public List<ChucNang> list();

	public void save(ChucNang cn);

	public void update(ChucNang cn);

	public void delete(String ma_chuc_nang);

	public void active(String ma_chuc_nang);

	public ChucNang getChucNangByCode(String ma_chuc_nang);
	
	public ChucNang findByMaChucNang(String ma_chuc_nang);
	
	public List<ChucNang> findAllForPaging(int startPosition,int maxResult);
	
	public List<ChucNang> findAll();
}

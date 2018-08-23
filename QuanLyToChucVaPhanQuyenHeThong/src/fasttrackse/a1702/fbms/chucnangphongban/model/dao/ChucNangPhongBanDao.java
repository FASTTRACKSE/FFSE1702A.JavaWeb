package fasttrackse.a1702.fbms.chucnangphongban.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.chucnangphongban.model.entities.ChucNangPhongBan;

public interface ChucNangPhongBanDao {
	public List<ChucNangPhongBan> findAll();

	public void addNew(String maPhongBan, List<String> maChucNang);

	public void update(String maPhongBan, List<String> maChucNang);

	public void delete(String maPhongBan);

	public List<Object> findAllForPaging(int startPosition, int maxResult);
	
	public List<Object> getMaChucNangByMaPhongBan(String maPhongBan);
}
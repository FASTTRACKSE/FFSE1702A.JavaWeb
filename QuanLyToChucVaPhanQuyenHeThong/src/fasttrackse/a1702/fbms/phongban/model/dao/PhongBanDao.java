package fasttrackse.a1702.fbms.phongban.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.phongban.model.entities.PhongBan;

public interface PhongBanDao {
	public List<PhongBan> findAll();
	
	public void addNew(PhongBan pb);

	public void update(PhongBan pb);

	public void delete(String maPhongBan);

	public List<PhongBan> findAllForPaging(int startPosition, int maxResult);
	
	public PhongBan findByMaPhongBan(String maPhongBan);
}

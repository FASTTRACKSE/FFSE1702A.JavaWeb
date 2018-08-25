package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucNangPhongBan;

public interface ChucNangPhongBanDao {
	public List<ChucNangPhongBan> findAll();

	public void addNew(ChucNangPhongBan cd);

	public void update(ChucNangPhongBan cd);

	public void delete(int id);

	public List<ChucNangPhongBan> findAllForPaging(int startPosition, int maxResult);

	public ChucNangPhongBan findById(int id);
}
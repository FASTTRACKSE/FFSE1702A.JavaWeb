package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.PhongBan;

public interface PhongBanService {
	public List<PhongBan> findAll();

	public void addNew(PhongBan pb);

	public void update(PhongBan pb);

	public void delete(String maPhongBan);

	public List<PhongBan> findAllForPaging(int startPosition, int maxResult);

	public PhongBan findByMaPhongBan(String maPhongBan);
}

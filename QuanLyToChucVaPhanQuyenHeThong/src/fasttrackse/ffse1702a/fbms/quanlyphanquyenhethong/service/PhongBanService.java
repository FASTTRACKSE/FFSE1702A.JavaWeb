package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.PhongBan;

public interface PhongBanService {
	public List<PhongBan> findAll();

	public void addNew(PhongBan pb);

	public void update(PhongBan pb);

	public void delete(String maPhongBan);

	public PhongBan findByMaPhongBan(String maPhongBan);

	public List<PhongBan> findAll(int iDisplayStart, int iDisplayLength, String sql);

	public String getRecordsTotal();

	public String getRecordsFiltered(String sql);

	public String getSQL(HttpServletRequest request);

	public String toJson(PhongBan pb);
}

package fasttrackse.ffse1702a.fhrm.dao.security;

import java.util.List;

import fasttrackse.ffse1702a.fhrm.entity.security.PhongBan;

public interface PhongBanDao {
	public List<PhongBan> findAll();
	
	public void addNew(PhongBan pb);

	public void update(PhongBan pb);

	public void delete(String maPhongBan);
	
	public PhongBan findByMaPhongBan(String maPhongBan);
	
	public List<PhongBan> findAll(int iDisplayStart, int iDisplayLength, String sql);
	
	public String getRecordsTotal();
	
	public String getRecordsFiltered(String sql);
}

package fasttrackse.ffse1702a.fhrm.dao.security;

import java.util.List;

import fasttrackse.ffse1702a.fhrm.entity.security.ChucDanh;

public interface ChucDanhDao {
	public List<ChucDanh> findAll();

	public void addNew(ChucDanh cd);

	public void update(ChucDanh cd);

	public void delete(String maChucDanh);

	public ChucDanh findByMaChucDanh(String maChucDanh);
	
	public List<ChucDanh> findAll(int iDisplayStart, int iDisplayLength, String sql);
	
	public String getRecordsTotal();
	
	public String getRecordsFiltered(String sql);
}

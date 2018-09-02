package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.dao;

import java.util.List;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucDanh;

public interface ChucDanhDao {
	public List<ChucDanh> findAll();
	
	public List<ChucDanh> findAll(int iDisplayStart, int iDisplayLength, String sql);

	public void addNew(ChucDanh cd);

	public void update(ChucDanh cd);

	public void delete(String maChucDanh);

	//public List<ChucDanh> findAllForPaging(int startPosition, int maxResult);

	public ChucDanh findByMaChucDanh(String maChucDanh);
	
	public String getRecordsTotal();
	
	public String getRecordsFiltered(String sql);
}

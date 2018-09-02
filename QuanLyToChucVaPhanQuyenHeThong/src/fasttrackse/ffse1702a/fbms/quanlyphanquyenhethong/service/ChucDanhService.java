package fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import fasttrackse.ffse1702a.fbms.quanlyphanquyenhethong.model.entity.ChucDanh;

public interface ChucDanhService {
	public List<ChucDanh> findAll();

	public void addNew(ChucDanh cd);

	public void update(ChucDanh cd);

	public void delete(String maChucDanh);

	//public List<ChucDanh> findAllForPaging(int startPosition, int maxResult);

	public ChucDanh findByMaChucDanh(String maChucDanh);
	
	public List<ChucDanh> findAll(int iDisplayStart, int iDisplayLength, String sql);
	
	public String getRecordsTotal();
	
	public String getRecordsFiltered(String sql);
	
	public String getSQL(HttpServletRequest request);
	
	public String toJson(ChucDanh cd);
}

package fasttrackse.a1702.fbms.chucnangchucdanh.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.chucnangchucdanh.model.entities.ChucNangChucDanh;

public interface ChucNangChucDanhDao {
	public List<ChucNangChucDanh> findAll();

	public void addNew(String maChucDanh, List<String> maChucNang);

	public void update(String maChucDanh, List<String> maChucNang);

	public void delete(String maChucDanh);

	public List<Object> findAllForPaging(int startPosition, int maxResult);
	
	public List<Object> getMaChucNangByMaChucDanh(String maChucDanh);
}

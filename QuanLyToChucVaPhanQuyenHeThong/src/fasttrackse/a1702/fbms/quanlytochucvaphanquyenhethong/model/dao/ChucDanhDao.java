package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities.ChucDanh;

public interface ChucDanhDao {
	public List<ChucDanh> findAll();

	public void addNew(ChucDanh cd);

	public void update(ChucDanh cd);

	public void delete(String maChucDanh);

	public List<ChucDanh> findAllForPaging(int startPosition, int maxResult);

	public ChucDanh findByMaChucDanh(String maChucDanh);
}

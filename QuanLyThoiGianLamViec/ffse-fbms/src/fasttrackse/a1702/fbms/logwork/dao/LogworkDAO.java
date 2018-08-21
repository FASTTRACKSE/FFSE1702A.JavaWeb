package fasttrackse.a1702.fbms.logwork.dao;

import java.util.List;

import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;

public interface LogworkDAO {
	public void create(ThoiGianLamViec logWork);
	public List<ThoiGianLamViec> getAllForPaging(int startPosition, int maxResult);
	public List<ThoiGianLamViec> getAll();
}

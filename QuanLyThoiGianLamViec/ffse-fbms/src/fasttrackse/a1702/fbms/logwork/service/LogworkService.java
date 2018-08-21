package fasttrackse.a1702.fbms.logwork.service;

import java.util.List;

import fasttrackse.a1702.fbms.logwork.entity.ThoiGianLamViec;

public interface LogworkService {
	public void create(ThoiGianLamViec logWork);
	public List<ThoiGianLamViec> getAllForPaging(int startPosition, int maxResult);
	public List<ThoiGianLamViec> getAll();
}

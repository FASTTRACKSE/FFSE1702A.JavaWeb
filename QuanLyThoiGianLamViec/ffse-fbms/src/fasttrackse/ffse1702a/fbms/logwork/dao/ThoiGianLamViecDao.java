package fasttrackse.ffse1702a.fbms.logwork.dao;

import java.util.Date;
import java.util.List;

import fasttrackse.ffse1702a.fbms.logwork.entity.NhiemVu;
import fasttrackse.ffse1702a.fbms.logwork.entity.ThoiGianLamViec;

public interface ThoiGianLamViecDao {

	public void createLogWork(ThoiGianLamViec thoiGianLamViec);
	public ThoiGianLamViec getLogWorkById(int maThoiGianLamViec);
	public void updateLogWork(ThoiGianLamViec thoiGianLamViec);
	public void deleteLogWork(int maThoiGianLamViec);
}

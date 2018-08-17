package fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.dao;
import java.util.List;

import fasttrackse.ffse1702a.fbms.QuanLyNhanSu.model.entity.HopDong;
public interface QuanLyHopDongDAO {
	public List<HopDong> getAllHopDong();
	public List<HopDong> getHopDongByPhongBan(String maPhongBan);
	public void addHopDong(HopDong tthd);
	public void updateHopDong(HopDong tthd);
	public String getAutoId();
}

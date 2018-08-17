package fasttrackse.a1702.fbms.model.dao;

import java.util.List;

import fasttrackse.a1702.fbms.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.model.entity.PhanCong;

public interface PhanCongDanhGiaDAO {
	
	public void luuPhanCong(PhanCong phanCong);
	public List<HoSoNhanVien> DSNhanVien();
}

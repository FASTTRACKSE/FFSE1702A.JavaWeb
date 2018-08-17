package fasttrackse.a1702.fbms.service;

import java.util.List;

import fasttrackse.a1702.fbms.model.entity.HoSoNhanVien;
import fasttrackse.a1702.fbms.model.entity.PhanCong;

public interface PhanCongDanhGiaService {
	public void luuPhanCong(PhanCong phanCong);
	public List<HoSoNhanVien> DSNhanVien();
}

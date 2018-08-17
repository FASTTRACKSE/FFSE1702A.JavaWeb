package fasttrackse.a1702.fbms.model.dao;

import java.util.List;
import fasttrackse.a1702.fbms.model.entity.DanhGiaNgangHang;

public interface DanhGiaNgangHangDAO {
	
	public void luuDanhGia(DanhGiaNgangHang danhGiaNgangHang);
	public List<DanhGiaNgangHang> DSDanhGia();
}

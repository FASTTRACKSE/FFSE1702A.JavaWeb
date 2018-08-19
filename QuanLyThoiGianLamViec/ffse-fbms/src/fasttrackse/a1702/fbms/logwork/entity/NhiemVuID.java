package fasttrackse.a1702.fbms.logwork.entity;

import javax.persistence.Embeddable;

/**
 * Khóa chính của bảng nhiem_vu là cặp (ma_nhan_vien, ma_du_an)
 * 
 */

@Embeddable
public class NhiemVuID {

	private NhanVien nhanVien;
	
	private DuAn duAn;
	
	public NhiemVuID() {
		
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public DuAn getDuAn() {
		return duAn;
	}

	public void setDuAn(DuAn duAn) {
		this.duAn = duAn;
	}
}

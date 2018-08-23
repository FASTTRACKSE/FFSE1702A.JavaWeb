package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tai_khoan")
public class TaiKhoan {
	@Id
	@Column(name = "ma_nhan_vien")
	private String maNhanVien;
	
	@Column(name = "mat_khau")
	private String matKhau;
	
	@Column(name = "trang_thai")
	private int trangThai;

	public String getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public int getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(int trangThai) {
		this.trangThai = trangThai;
	}

	public TaiKhoan() {
		super();
	}

	public TaiKhoan(String maNhanVien, String matKhau, int trangThai) {
		super();
		this.maNhanVien = maNhanVien;
		this.matKhau = matKhau;
		this.trangThai = trangThai;
	}

	@Override
	public String toString() {
		return "TaiKhoan [maNhanVien=" + maNhanVien + ", matKhau=" + matKhau + ", trangThai=" + trangThai + "]";
	}

}

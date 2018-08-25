package fasttrackse.a1702.fbms.quanlytochucvaphanquyenhethong.model.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "tai_khoan")
public class TaiKhoan {
	@Id
	@Column(name = "ten_dang_nhap", nullable = false, length = 30)
	private String tenDangNhap;
	
	@Column(name = "ma_nhan_vien", nullable = false, length = 30)
	@NotEmpty
	private String maNhanVien;
	
	@Column(name = "mat_khau", nullable = false, length = 30)
	@NotEmpty
	private String matKhau;
	
	@Column(name = "trang_thai")
	private int trangThai;

	public String getTenDangNhap() {
		return tenDangNhap;
	}

	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

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

	public TaiKhoan(String tenDangNhap, String maNhanVien, String matKhau, int trangThai) {
		super();
		this.tenDangNhap = tenDangNhap;
		this.maNhanVien = maNhanVien;
		this.matKhau = matKhau;
		this.trangThai = trangThai;
	}
}

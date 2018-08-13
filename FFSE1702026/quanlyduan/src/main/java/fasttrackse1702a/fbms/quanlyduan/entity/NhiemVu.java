package fasttrackse1702a.fbms.quanlyduan.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nhiem_vu")
public class NhiemVu {
	@Id
	@Column(name="ma_du_an")
	private String maDuAn;
	@Column(name="ma_nhan_vien")
	private String maNhanVien;
	@Column(name="ma_vai_tro")
	private String maVaiTro;
	public String getMaDuAn() {
		return maDuAn;
	}
	public void setMaDuAn(String maDuAn) {
		this.maDuAn = maDuAn;
	}
	public String getMaNhanVien() {
		return maNhanVien;
	}
	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}
	public String getMaVaiTro() {
		return maVaiTro;
	}
	public void setMaVaiTro(String maVaiTro) {
		this.maVaiTro = maVaiTro;
	}
	
}

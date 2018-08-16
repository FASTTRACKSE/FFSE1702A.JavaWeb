package fasttrackse1702a.fbms.quanlyduan.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="nhiem_vu")
public class NhiemVu implements Serializable {
	
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="ma_du_an")
	private String maDuAn;
	@Id
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

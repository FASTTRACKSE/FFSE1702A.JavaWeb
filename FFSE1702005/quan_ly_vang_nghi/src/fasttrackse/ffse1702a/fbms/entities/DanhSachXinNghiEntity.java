package fasttrackse.ffse1702a.fbms.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "danh_sach_don_xin_nghi")
public class DanhSachXinNghiEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_don")
	private Integer ma_don;

	@ManyToOne
	@JoinColumn(name = "ma_nhan_vien")
	private NgayNghiEntity ngaynghientity;

	@Column(name = "ten_nhan_vien")
	private String ten_nhan_vien;

	@Column(name = "phong_ban")
	private String phong_ban;

	@Column(name = "ngay_nghi")
	private Date ngay_nghi;

	@Column(name = "ngay_ket_thuc")
	private Date ngay_ket_thuc;

	@NotNull
	@Min(1)
	@Max(12)
	@Column(name = "so_ngay_nghi")
	private Integer so_ngay_nghi;

	@Column(name = "ly_do")
	private Integer ly_do;

	@Size(max=255)
	@Column(name = "ghi_chu")
	private String ghi_chu;

	@Size(max=255)
	@Column(name = "ghi_chu_truong_phong")
	private String ghi_chu_truong_phong;

	@Column(name = "trang_thai")
	private String trang_thai;

	public NgayNghiEntity getNgaynghientity() {
		return ngaynghientity;
	}

	public void setNgaynghientity(NgayNghiEntity ngaynghientity) {
		this.ngaynghientity = ngaynghientity;
	}

	public Integer getMa_don() {
		return ma_don;
	}

	public void setMa_don(Integer ma_don) {
		this.ma_don = ma_don;
	}

	public String getTen_nhan_vien() {
		return ten_nhan_vien;
	}

	public void setTen_nhan_vien(String ten_nhan_vien) {
		this.ten_nhan_vien = ten_nhan_vien;
	}

	public String getPhong_ban() {
		return phong_ban;
	}

	public void setPhong_ban(String phong_ban) {
		this.phong_ban = phong_ban;
	}

	public Date getNgay_nghi() {
		return ngay_nghi;
	}

	public void setNgay_nghi(Date ngay_nghi) {
		this.ngay_nghi = ngay_nghi;
	}

	public Date getNgay_ket_thuc() {
		return ngay_ket_thuc;
	}

	public void setNgay_ket_thuc(Date ngay_ket_thuc) {
		this.ngay_ket_thuc = ngay_ket_thuc;
	}

	public Integer getSo_ngay_nghi() {
		return so_ngay_nghi;
	}

	public void setSo_ngay_nghi(Integer so_ngay_nghi) {
		this.so_ngay_nghi = so_ngay_nghi;
	}

	public Integer getLy_do() {
		return ly_do;
	}

	public void setLy_do(Integer ly_do) {
		this.ly_do = ly_do;
	}

	public String getGhi_chu() {
		return ghi_chu;
	}

	public void setGhi_chu(String ghi_chu) {
		this.ghi_chu = ghi_chu;
	}

	public String getGhi_chu_truong_phong() {
		return ghi_chu_truong_phong;
	}

	public void setGhi_chu_truong_phong(String ghi_chu_truong_phong) {
		this.ghi_chu_truong_phong = ghi_chu_truong_phong;
	}

	public String getTrang_thai() {
		return trang_thai;
	}

	public void setTrang_thai(String trang_thai) {
		this.trang_thai = trang_thai;
	}

}

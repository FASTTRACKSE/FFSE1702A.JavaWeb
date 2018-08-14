package fasttrackse.a1702.fbms.entities;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tk_nv_nghi")
public class DanhSachXinNghiEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_don")
	private Integer ma_don;

	@Column(name = "ma_nhan_vien")
	private Integer ma_nhan_vien;

	@Column(name = "ten_nhan_vien")
	private String ten_nhan_vien;

	@Column(name = "phong_ban")
	private String phong_ban;

	@Column(name = "ngay_nghi")
	private Date ngay_nghi;

	@Column(name = "ngay_di_lam_lai")
	private Date ngay_di_lam_lai;

	@Column(name = "so_ngay_da_nghi")
	private Integer so_ngay_da_nghi;

	@Column(name = "so_ngay_con_lai")
	private Integer so_ngay_con_lai;

	@Column(name = "so_ngay_nghi")
	private Integer so_ngay_nghi;

	@Column(name = "ly_do")
	private Integer ly_do;

	@Column(name = "ghi_chu")
	private String ghi_chu;

	@Column(name = "trang_thai")
	public String trang_thai="aa";

	public Integer getMa_don() {
		return ma_don;
	}

	public void setMa_don(Integer ma_don) {
		this.ma_don = ma_don;
	}

	public Integer getMa_nhan_vien() {
		return ma_nhan_vien;
	}

	public void setMa_nhan_vien(Integer ma_nhan_vien) {
		this.ma_nhan_vien = ma_nhan_vien;
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

	public Date getNgay_di_lam_lai() {
		return ngay_di_lam_lai;
	}

	public void setNgay_di_lam_lai(Date ngay_di_lam_lai) {
		this.ngay_di_lam_lai = ngay_di_lam_lai;
	}

	public Integer getSo_ngay_da_nghi() {
		return so_ngay_da_nghi;
	}

	public void setSo_ngay_da_nghi(Integer so_ngay_da_nghi) {
		this.so_ngay_da_nghi = so_ngay_da_nghi;
	}

	public Integer getSo_ngay_con_lai() {
		return so_ngay_con_lai;
	}

	public void setSo_ngay_con_lai(Integer so_ngay_con_lai) {
		this.so_ngay_con_lai = so_ngay_con_lai;
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

	public String getTrang_thai() {
		return trang_thai;
	}

	public void setTrang_thai(String trang_thai) {
		this.trang_thai = trang_thai;
	}

}

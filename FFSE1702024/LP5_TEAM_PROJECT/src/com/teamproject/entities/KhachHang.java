package com.teamproject.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="khach_hang")
public class KhachHang {
	@Column(name="ma_khach_hang",unique=true)
	private String maKhachHang;
	@Column(name="ten_khach_hang")
	private String tenKhachHang;
	@Column(name="dia_chi")
	private String diaChi;
	@Column(name="trung_tam")
	private String trungTam;
	public KhachHang() {
		
	}
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "ma_khach_hang",cascade=CascadeType.MERGE)
	private Set<DuAn_KhachHang> duAn_KhachHang = new HashSet<DuAn_KhachHang>(0);
	public String getMaKhachHang() {
		return maKhachHang;
	}
	public void setMaKhachHang(String maKhachHang) {
		this.maKhachHang = maKhachHang;
	}
	public String getTenKhachHang() {
		return tenKhachHang;
	}
	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getTrungTam() {
		return trungTam;
	}
	public void setTrungTam(String trungTam) {
		this.trungTam = trungTam;
	}
	

}

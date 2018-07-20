package com.journaldev.spring.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations Hibernate provides JPA implementation
 * 
 * @author pankaj
 *
 */
@Entity
@Table(name = "SinhVien")
public class Person implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private int id;
	
	@Column(name="MaSV")
	private String maSV;
	
	@Column(name="HoSV")
	private String hoSV;
	
	@Column(name="TenSV")
	private String tenSV;
	
	@Column(name="NamSinh")
	private String namSinh;
	
	@Column(name="GioiTinh")
	private String gioiTinh;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="DienThoai")
	private String dienThoai;
	
	@Column(name="DiaChi")
	private String diaChi;
	
	@Column(name="MaLop")
	private String maLop;

//	@ManyToOne(cascade = CascadeType.ALL)
//	private LopHoc lopHoc;
//
//	public LopHoc getLopHoc() {
//		return lopHoc;
//	}
//
//	public void setLopHoc(LopHoc lopHoc) {
//		this.lopHoc = lopHoc;
//	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaSV() {
		return maSV;
	}

	public void setMaSV(String maSV) {
		this.maSV = maSV;
	}

	public String getHoSV() {
		return hoSV;
	}

	public void setHoSV(String hoSV) {
		this.hoSV = hoSV;
	}

	public String getTenSV() {
		return tenSV;
	}

	public void setTenSV(String tenSV) {
		this.tenSV = tenSV;
	}

	public String getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(String namSinh) {
		this.namSinh = namSinh;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDienThoai() {
		return dienThoai;
	}

	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getMaLop() {
		return maLop;
	}

	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}

	@Override
	public String toString() {
		return "id=" + id + ", maSV=" + maSV + ", hoSV=" + hoSV + ", tenSV=" + tenSV + ", namSinh=" + namSinh
				+ ", gioiTinh=" + gioiTinh + ", email=" + email + ", dienThoai=" + dienThoai + ", diaChi=" + diaChi
				+ ", maLop=" + maLop;
	}
}
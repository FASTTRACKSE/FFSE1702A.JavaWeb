package com.journaldev.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations Hibernate provides JPA implementation
 * 
 * @author pankaj
 *
 */
@Entity
@Table(name = "PERSON")
public class Person {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String ten;

	private String hoDem;
	private String maSV;
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	@JoinColumn(name = "maLop", referencedColumnName = "id", insertable = true, updatable = true)
	private Lop lop;
	private String namSinh;
	private String diaChi;
	private String email;
	private String dienThoai;
	private String gioiTinh;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String Ten) {
		this.ten = Ten;
	}

	public String getHoDem() {
		return hoDem;
	}

	public void setHoDem(String HoDem) {
		this.hoDem = HoDem;
	}

	public String getMaSV() {
		return maSV;
	}

	public void setMaSV(String MaSV) {
		this.maSV = MaSV;
	}

	public Lop getLop() {
		return lop;
	}

	public void setLop(Lop lop) {
		this.lop = lop;
	}

	public String getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(String NamSinh) {
		this.namSinh = NamSinh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String DiaChi) {
		this.diaChi = DiaChi;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String Email) {
		this.email = Email;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String GioiTinh) {
		this.gioiTinh = GioiTinh;
	}

	public String getDienThoai() {
		return dienThoai;
	}

	public void setDienThoai(String DienThoai) {
		this.dienThoai = DienThoai;
	}

	@Override
	public String toString() {
		return "id=" + id + ", Ten=" + ten + ", HoDem=" + hoDem + ", MaSV=" + maSV + ", MaLop = " + lop + ", NamSinh="
				+ namSinh + ",  DiaChi=" + diaChi + ",Email=" + email + ", GioiTinh=" + gioiTinh + ", DienThoai="
				+ dienThoai;
	}
}
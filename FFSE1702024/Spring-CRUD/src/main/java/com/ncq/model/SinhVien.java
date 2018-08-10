package com.ncq.model;

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

import com.ncq.model.Lop;

@Entity
@Table(name="sinhvien")
public class SinhVien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;

	
	@Column(name = "msv")
	private String msv;
	@Column(name = "hoDem")
	private String hoDem;
	@Column(name = "ten")
	private String ten;
	@Column(name = "namSinh")
	private String namSinh;
	@Column(name = "gioitinh")
	private String gioitinh;
	@Column(name = "email")
	private String email;
	@Column(name = "sdt")
	private String sdt;
	@Column(name = "diaChi")
	private String diaChi;
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
	@JoinColumn(name = "maLop", referencedColumnName = "idLop", insertable = true, updatable = true)
	private Lop lop;

	

	public SinhVien() {
		super();
	}

	public Lop getLop() {
		return lop;
	}

	public void setLop(Lop lop) {
		this.lop = lop;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMsv() {
		return msv;
	}
	public void setMsv(String msv) {
		this.msv = msv;
	}
	public String getHoDem() {
		return hoDem;
	}
	public void setHoDem(String hoDem) {
		this.hoDem = hoDem;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getNamSinh() {
		return namSinh;
	}
	public void setNamSinh(String namSinh) {
		this.namSinh = namSinh;
	}
	public String getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

}

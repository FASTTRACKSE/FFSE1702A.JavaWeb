package com.ffse.model;

public class Student {
	private int id;
	private String maSV;
	private String tenSV;
	private String gioiTinh;
	private String diaChi;
	private String email;
	private String lop;
	
	public Student() {
		super();
		this.id = id;
		this.maSV = maSV;
		this.tenSV = tenSV;
		this.gioiTinh = gioiTinh;
		this.diaChi = diaChi;
		this.email = email;
		this.lop = lop;
	}

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
	public String getTenSV() {
		return tenSV;
	}
	public void setTenSV(String tenSV) {
		this.tenSV = tenSV;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLop() {
		return lop;
	}
	public void setLop(String lop) {
		this.lop = lop;
	}
	
	
}

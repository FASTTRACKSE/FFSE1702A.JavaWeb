package com.springcrud.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

@Entity
@Table(name = "SinhVien")
public class SinhVienEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "SV_ID")
	private Integer id;

	@Column(name = "Ho")
	private String Ho;

	@Column(name = "Ten")
	private String Ten;

	@Column(name = "NamSinh")
	private Integer NamSinh;

	@Column(name = "GioiTinh")
	private String GioiTinh;

	@Column(name = "Email")
	private String Email;

	@Column(name = "SDT")
	private Integer SDT;

	@Column(name = "DiaChi")
	private String DiaChi;

	@ManyToOne
	@JoinColumn(name = "MaLop")
	private LopHocEntity lophoc;

	public LopHocEntity getLophoc() {
		return lophoc;
	}

	public void setLophoc(LopHocEntity lophoc) {
		this.lophoc = lophoc;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHo() {
		return Ho;
	}

	public void setHo(String ho) {
		Ho = ho;
	}

	public String getTen() {
		return Ten;
	}

	public void setTen(String ten) {
		Ten = ten;
	}

	public Integer getNamSinh() {
		return NamSinh;
	}

	public void setNamSinh(Integer namSinh) {
		NamSinh = namSinh;
	}

	public String getGioiTinh() {
		return GioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		GioiTinh = gioiTinh;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public Integer getSDT() {
		return SDT;
	}

	public void setSDT(Integer sDT) {
		SDT = sDT;
	}

	public String getDiaChi() {
		return DiaChi;
	}

	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}

}

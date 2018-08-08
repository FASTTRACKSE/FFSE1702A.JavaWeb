package com.springcrud.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.JoinColumn;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "SinhVien")
public class SinhVienEntity{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "SV_ID")
	private Integer id;

	@NotEmpty
	@Column(name = "Ho")
	private String ho;

	@NotEmpty
	@Column(name = "Ten")
	private String ten;

	@NotNull
	@Min(1900)
	@Max(2018)
	@Column(name = "NamSinh")
	private Integer namSinh;

	@Column(name = "GioiTinh")
	private String gioiTinh;

	@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$")
	@Column(name = "Email")
	private String email;

	@Size(min=10,max=11)
	@Column(name = "SDT")
	private String sdt;

	@NotEmpty
	@Column(name = "DiaChi")
	private String diaChi;

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
		return ho;
	}

	public void setHo(String ho) {
		this.ho = ho;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public Integer getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(Integer namSinh) {
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

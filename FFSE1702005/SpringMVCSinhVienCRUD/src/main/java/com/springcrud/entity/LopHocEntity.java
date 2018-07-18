package com.springcrud.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "LopHoc")
public class LopHocEntity {

	@Column(name = "MaLop")
	private String MaLop;

	@Column(name = "TenLop")
	private String TenLop;
	
	public String getMaLop() {
		return MaLop;
	}

	public void setMaLop(String maLop) {
		MaLop = maLop;
	}

	public String getTenLop() {
		return TenLop;
	}

	public void setTenLop(String tenLop) {
		TenLop = tenLop;
	}

}

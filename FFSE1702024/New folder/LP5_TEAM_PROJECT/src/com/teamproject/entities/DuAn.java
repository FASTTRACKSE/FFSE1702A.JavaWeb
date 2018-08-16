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
@Table(name="du_an")
public class DuAn {
	@Column(name="ma_du_an")
	private String maDuAn;
	@Column(name="ten_du_an")
	private String tenDuAn;
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "ma_du_an",cascade=CascadeType.MERGE)
	private Set<DuAn_KhachHang> duAn_KhachHang = new HashSet<DuAn_KhachHang>(0);
	@Column(name="mo_ta_du_an")
	private String moTaDuAn;
	public DuAn(){
		
	}
	public String getMaDuAn() {
		return maDuAn;
	}
	public void setMaDuAn(String maDuAn) {
		this.maDuAn = maDuAn;
	}
	public String getTenDuAn() {
		return tenDuAn;
	}
	public void setTenDuAn(String tenDuAn) {
		this.tenDuAn = tenDuAn;
	}
	
	public String getMoTaDuAn() {
		return moTaDuAn;
	}
	public void setMoTaDuAn(String moTaDuAn) {
		this.moTaDuAn = moTaDuAn;
	}
	
	

}

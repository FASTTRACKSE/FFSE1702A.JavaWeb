package com.springcrud.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LopHoc")
public class LopHocEntity{

	@OneToMany(mappedBy = "lophoc")
	
	private List<SinhVienEntity> SinhVienEntity;

	public List<SinhVienEntity> getSinhVienEntity() {
		return SinhVienEntity;
	}

	public void setSinhVienEntity(List<SinhVienEntity> sinhVienEntity) {
		SinhVienEntity = sinhVienEntity;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "MaLop")
	private Integer maLop;

	@Column(name = "TenLop")
	private String TenLop;

	public Integer getMaLop() {
		return maLop;
	}

	public void setMaLop(Integer maLop) {
		this.maLop = maLop;
	}

	public String getTenLop() {
		return TenLop;
	}

	public void setTenLop(String tenLop) {
		TenLop = tenLop;
	}

}

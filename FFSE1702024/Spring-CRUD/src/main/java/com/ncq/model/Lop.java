package com.ncq.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.ncq.model.SinhVien;

@Entity
@Table(name="lop")
public class Lop {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="idlop")
	int idLop;
	@Column(name="lophoc")
	String lopHoc;
	
	@OneToMany(mappedBy="lop",fetch=FetchType.EAGER,cascade=CascadeType.MERGE)
	private Set<SinhVien> SinhVien=new HashSet<SinhVien>(0);
	public int getIdLop() {
		return idLop;
	}
	public void setIdLop(int idLop) {
		this.idLop = idLop;
	}
	public String getLopHoc() {
		return lopHoc;
	}
	public void setLopHoc(String lopHoc) {
		this.lopHoc = lopHoc;
	}
}

package com.journaldev.spring.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="LopHoc")
public class LopHoc {
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="TenLop")
	private String tenLop;
	
	// bi-directional many-to-one association to SinhVien
	@OneToMany(mappedBy = "lopHoc")
	private List<Person> sinhViens;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTenLop() {
		return tenLop;
	}

	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}

	public List<Person> getSinhViens() {
		return sinhViens;
	}

	public void setSinhViens(List<Person> sinhViens) {
		this.sinhViens = sinhViens;
	}

	@Override
	public String toString(){
		return "iD="+id+", tenLop="+tenLop;
	}
}
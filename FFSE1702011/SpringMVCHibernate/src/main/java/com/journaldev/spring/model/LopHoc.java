package com.journaldev.spring.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations
 * Hibernate provides JPA implementation
 * @author pankaj
 *
 */
@Entity
@Table(name="LopHoc")
public class LopHoc {
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="MaLop")
	private String maLop;
	@Column(name="TenLop")
	private String tenLop;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMaLop() {
		return maLop;
	}



	public void setMaLop(String maLop) {
		this.maLop = maLop;
	}



	public String getTenLop() {
		return tenLop;
	}



	public void setTenLop(String tenLop) {
		this.tenLop = tenLop;
	}


	@Override
	public String toString(){
		return "maLop="+maLop+", tenLop="+tenLop;
	}
}
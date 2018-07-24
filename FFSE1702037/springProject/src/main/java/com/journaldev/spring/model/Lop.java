package com.journaldev.spring.model;

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

/**
 * Entity bean with JPA annotations
 * Hibernate provides JPA implementation
 * @author pankaj
 *
 */
@Entity
@Table(name="LOP")
public class Lop {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	
	private int id;
	
	private String maLop;	
	private String tenLop;
	@OneToMany(mappedBy="lop",fetch=FetchType.EAGER,cascade=CascadeType.MERGE)
	private Set<Person> person=new HashSet<Person>(0);

	
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


	public Lop() {
		super();
	}


	
}
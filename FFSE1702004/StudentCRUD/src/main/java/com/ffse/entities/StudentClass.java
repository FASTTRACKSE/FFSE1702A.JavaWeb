package com.ffse.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "classstudent")
public class StudentClass implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "idClass")
	private String idClass;

//	@OneToMany(fetch = FetchType.EAGER, cascade = { CascadeType.ALL })
//	@JoinColumn(name = "idClass", referencedColumnName = "idClass")
//	private Student student;
	
	@Column(name = "nameClass")
	private String nameClass;

	public StudentClass() {
	}

	public StudentClass(int id, String idClass, String nameClass) {
		super();
		this.id = id;
		this.idClass = idClass;
		this.nameClass = nameClass;
	}

	// getter-setter

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getidClass() {
		return idClass;
	}

	public void setidClass(String idClass) {
		this.idClass = idClass;
	}

	public String getnameClass() {
		return nameClass;
	}

	public void setnameClass(String nameClass) {
		this.nameClass = nameClass;
	}

}

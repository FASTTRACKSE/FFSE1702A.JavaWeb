package com.ffse.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name = "student")
public class Student implements Serializable {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "id_st")
	private String id_st;
	@Column(name = "firstname")
	private String firstname;
	@Column(name = "surname")
	private String surname;
	@Column(name = "birthday")
	private String birthday;
	@Column(name = "gender")
	private String gender;
	@Column(name = "email")
	private String email;
	@Column(name = "phone")
	private String phone;
	@Column(name = "address")
	private String address;
	
	@ManyToOne
    @JoinColumn(name = "idClass", referencedColumnName = "idClass")
	private StudentClass idClass;



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}


 public Student() {
	 
 }
	public String getId_st() {
		return id_st;
	}



	public void setId_st(String id_st) {
		this.id_st = id_st;
	}



	public String getFirstname() {
		return firstname;
	}



	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}



	public String getSurname() {
		return surname;
	}



	public void setSurname(String surname) {
		this.surname = surname;
	}



	public String getBirthday() {
		return birthday;
	}



	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getaddress() {
		return address;
	}



	public void setaddress(String address) {
		this.address = address;
	}



	public StudentClass getIdClass() {
		return idClass;
		}



	public void setIdClass(StudentClass idClass) {
		this.idClass = idClass;
	}



	public Student(int id, String id_st, String firstname, String surname, String birthday, String gender, String email,
			String phone, String address, StudentClass idClass) {
		super();
		this.id = id;
		this.id_st = id_st;
		this.firstname = firstname;
		this.surname = surname;
		this.birthday = birthday;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.idClass = idClass;
	}
	
 
	

}

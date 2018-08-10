package com.tung.sinhvien.entity;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "sinh_vien")
public class sinhvien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	int id;

	@Column(name = "Firstname")
	String firstName;

	@Column(name = "lastname")
	String lastName;

	@Column(name = "birthyear")
	String birthYear;

	@Column(name = "gender")
	String gender;

	@Column(name = "email")
	String email;

	@Column(name = "phone")
	String phone;

	@Column(name = "address")
	String address;

	@ManyToOne
	@JoinColumn(name = "maLop")
	lop lopJoin;

	public sinhvien() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getBirthYear() {
		return birthYear;
	}

	public void setBirthYear(String birthYear) {
		this.birthYear = birthYear;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public lop getLop() {
		return lopJoin;
	}

	public void setLop(lop lopJoin) {
		this.lopJoin = lopJoin;
	}

}

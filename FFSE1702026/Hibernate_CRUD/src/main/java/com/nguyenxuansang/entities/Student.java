package com.nguyenxuansang.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "student")

public class Student {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	@Column(name = "code")
	@NotEmpty
	@Length(min=3,max=50)
	private String code;
	@Column(name = "firstname")
	@NotEmpty
	@Length(min=3,max=50)
	private String firstname;
	@Column(name = "lastname")
	@NotEmpty
	@Length(min=3,max=50)
	private String lastname;
	@Column(name = "birthday")
	
	
	private int birthday;
	@Column(name = "gender")
	private int gender;
	@Column(name = "email")
	@NotEmpty
	@Email
	private String email;
	@Column(name = "phone")
	@NotEmpty
	
	@Length(min=9,max=11)
	private String phone;
	@Column(name = "address")
	@NotEmpty
	@Length(min=4,max=50)
	private String address;
	@Column(name = "id_class")
	
	private int id_class;
	public Student(String code, String firstname, String lastname, int birthday, int gender, String email, String phone,
			String address, int id_class) {
		super();
		this.code = code;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthday = birthday;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.id_class = id_class;
	}
	public Student() {
		super();
	}
	
	public Student(Integer id, String code, String firstname, String lastname, int birthday, int gender, String email,
			String phone, String address, int id_class) {
		super();
		this.id = id;
		this.code = code;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthday = birthday;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.id_class = id_class;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
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
	public int getId_class() {
		return id_class;
	}
	public void setId_class(int id_class) {
		this.id_class = id_class;
	}
	

}

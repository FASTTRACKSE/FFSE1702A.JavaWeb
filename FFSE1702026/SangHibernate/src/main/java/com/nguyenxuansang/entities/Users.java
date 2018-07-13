package com.nguyenxuansang.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="users")

public class Users {
	@Id
	@Column(name="user_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	private Integer user_id;
	
	@Column(name="user_name")
	@NotEmpty(message="Không để trống")
	private String user_name;
	
	@Column(name="email")
	@Email(message="nhập email hợp lệ")
	private String email;
	
	public Users(String user_name,String email) {
		this.email=email;
		this.user_name=user_name;
	}
	

	public Users() {
		super();
	}


	public Users(Integer user_id, String user_name, String email) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.email = email;
	}


	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}

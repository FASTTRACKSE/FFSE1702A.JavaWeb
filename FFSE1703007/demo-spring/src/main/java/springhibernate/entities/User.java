package springhibernate.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
@Id
@Column(name="id")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private int id;

@Column(name="name")
private String name;

@Column(name="password")
private String password;

@Column(name="email")
private String email;

@Column(name="gender")
private String gender;

@Column(name="country")
private String country;

public User() {
	super();
}

public User(String name, String password, String email, String gender, String country) {
	super();
	this.name = name;
	this.password = password;
	this.email = email;
	this.gender = gender;
	this.country = country;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

}

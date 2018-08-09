package springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.Valid;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name="students")
public class Student {
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	@Column(name="id")
	int id;
	
	@Column(name="firstname")
	@NotEmpty
	String firstName;
		
	@Column(name="lastname")
	@NotEmpty
	String lastName;
		
	@Column(name="birthyear")
	@NotEmpty
	String birthYear;
		
	@Column(name="gender")
	@NotEmpty
	String gender;
		
	@Column(name="email")
	@NotEmpty
	String email;
	
	@Column(name="phone")
	@NotEmpty
	String phone;
		
	@Column(name="address")
	@NotEmpty
	String address;
	
	@ManyToOne
	@JoinColumn(name="courseID")
	@Valid
	Course course;

	public Student() {
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

	public Course getCourse() {
		return course;
	}

	public void setCourse(Course course) {
		this.course = course;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", birthYear=" + birthYear
				+ ", gender=" + gender + ", email=" + email + ", phone=" + phone + ", address=" + address + ", course="
				+ course + "]";
	}
	
	
}

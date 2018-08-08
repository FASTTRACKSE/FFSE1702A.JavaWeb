package QuanLySinhVien.entiny;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="SinhVien")
public class SinhVien {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID")
	private Integer id;
	
	@Column(name="Firstname")
	private String firstname;
	
	@Column(name="Lastname")
	private String lastname;
	
	@Column(name="Namsinh")
	private Integer namsinh;
	
	@Column(name="Gioitinh")
	private String gioitinh;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Phone")
	private Integer phone;
	
	@Column(name="Diachi")
	private String diachi;
	
	@Column(name="Malop")
	private String malop;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public Integer getNamsinh() {
		return namsinh;
	}

	public void setNamsinh(Integer namsinh) {
		this.namsinh = namsinh;
	}

	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getPhone() {
		return phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getMalop() {
		return malop;
	}

	public void setMalop(String malop) {
		this.malop = malop;
	}
	
	
	
}

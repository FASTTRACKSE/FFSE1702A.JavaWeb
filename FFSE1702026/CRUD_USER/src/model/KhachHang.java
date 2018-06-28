package model;

public class KhachHang {
	private String maKH;
	private String name;
	private String phone;
	private String email;
	private String quan;
	
	public KhachHang() {
		super();
	}
	public KhachHang(String maKH, String name, String phone, String email, String quan) {
		super();
		this.maKH = maKH;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.quan = quan;
	}
	public String getMaKH() {
		return maKH;
	}
	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQuan() {
		return quan;
	}
	public void setQuan(String quan) {
		this.quan = quan;
	}

}

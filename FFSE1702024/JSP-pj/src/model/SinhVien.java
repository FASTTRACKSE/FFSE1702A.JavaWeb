package model;
public class SinhVien {
	String masv;
    String name;
    String age;
    String cls;
    String dress;
    
    public SinhVien() {
    	//
    }
  
	public SinhVien(String masv, String name, String age, String cls, String dress) {
		this.masv = masv;
		this.name = name;
		this.age = age;
		this.cls = cls;
		this.dress = dress;
	}


	public String getMasv() {
		return masv;
	}


	public void setMasv(String masv) {
		this.masv = masv;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getCls() {
		return cls;
	}


	public void setCls(String cls) {
		this.cls = cls;
	}


	public String getDress() {
		return dress;
	}


	public void setDress(String dress) {
		this.dress = dress;
	}


}
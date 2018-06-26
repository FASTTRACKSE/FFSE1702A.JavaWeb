package model.bean;

public class Users {
	private String id, name, year, classroom, sex, country,file;

	public Users() {
		super();
	}

	public Users(String id, String name, String year, String classroom, String sex, String country, String file) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.classroom = classroom;
		this.sex = sex;
		this.country = country;
		this.file = file;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getClassroom() {
		return classroom;
	}

	public void setClassroom(String classroom) {
		this.classroom = classroom;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	
	
}


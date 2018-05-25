package model;

public class User {
	private String id, name, year, classroom, sex, country;

	public User() {
		super();
	}

	public User(String id, String name, String year, String classroom, String sex, String country) {
		super();
		this.id = id;
		this.name = name;
		this.year = year;
		this.classroom = classroom;
		this.sex = sex;
		this.country = country;
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

	
	
}

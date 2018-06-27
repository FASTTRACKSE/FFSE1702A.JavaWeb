package model.bean;
public class Animal {

	private int id;
	private String name;
	private String sex;
	private String age;
	public Animal(int id, String name, String sex, String age) {
		this.id =id;
		this.name =name;
		this.sex =sex;
		this.age =age;
	}
	
	public Animal() {
	}

	public Animal(String name, String sex, String age) {
		this.name =name;
		this.sex =sex;
		this.age =age;
	}
	

	public int getID() {
		return id;
	}
	public void setID(int iD) {
		id = iD;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}

	

}
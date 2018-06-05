package model.bean;

public class UserBean {

    private int id;
    private String fName;
    private String lName;
    private int age;
    private String gender;
        
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}	
	public int getage() {
		return age;
	}
	public void setage(int age) {
		this.age = age;
	}	
	public String getgender() {
		return gender;
	}
	public void setgender(String gender) {
		this.gender = gender;
	}
}
package student_controller;

public class Student {
	protected int id;
	protected String name;
	protected String old;
	protected String email;
	protected String clas;

	public Student() {
	}

	public Student(int id) {
		this.id = id;
	}

	public Student(int id, String name, String old, String email , String clas ) {
		this(name, old, email,clas);
		this.id = id;
	}
	
	public Student(String name, String old, String email , String clas ) {
		this.name = name;
		this.old = old;
		this.email = email;
		this.clas = clas;
	}
	//setter and getter 

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

	public String getOld() {
		return old;
	}

	public void setOld(String old) {
		this.old = old;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getClas() {
		return clas;
	}

	public void setClas(String clas) {
		this.clas = clas;
	}
	
	
}

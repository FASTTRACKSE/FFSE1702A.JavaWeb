package testInterface1;

//mot interface A
interface A {
	void a();

	void b();

	void c();

	void d();
}

// lop truu tuong B ke thua interface A
abstract class B implements A {
	// trong vi du nay, lop truu tuong B co the chi cung cap trinh trien khai phuong
	// thuc c()
	public void c() {
		System.out.println("Toi la C");
	}
}

// lop M ke thua lop truu tuong B
class M extends B {

	// bat buoc phai trien khai cac phuong thuc a(), b(), c()

	public void a() {
		System.out.println("Toi la a");
	}

	public void b() {
		System.out.println("Toi la b");
	}

	public void d() {
		System.out.println("Toi la d");
	}
}

// lop Test5 chua phuong thuc main()
class test5 {
	public static void main(String args[]) {
		A a = new M();
		a.a();
		a.b();
		a.c();
		a.d();
	}
}
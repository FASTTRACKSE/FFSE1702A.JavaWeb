
public class Hello {
	CallBack callBack;

	public Hello(CallBack callBack) {
		this.callBack = callBack;
	}
	
	public void inHello() {
		System.out.println("Hello world");
		callBack.doSomething();
	}
	
	public static void main(String[] args) {
		Hello hello = new Hello(new GoodByeCb());
		hello.inHello();
		
		Hello hello2 = new Hello(new DanhNhauCb());
		hello2.inHello();
		
		Hello hello3 = new Hello(new CallBack() {
			
			@Override
			public void doSomething() {
				System.out.println("Vi du 3");
			}
		});
		hello3.inHello();
	}
}

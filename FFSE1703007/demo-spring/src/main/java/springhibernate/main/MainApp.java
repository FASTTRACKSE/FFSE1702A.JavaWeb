package springhibernate.main;

import java.util.List;
import java.util.Scanner;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import springhibernate.dao.UserDAO;
import springhibernate.entities.User;

public class MainApp {
	static Scanner input;

	public static void main(String[] args) {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");

		do {
			System.out.println("0. Thoát");
			System.out.println("1. Thêm user");
			System.out.println("2. Xem danh sách");
			input = new Scanner(System.in);
			int control = Integer.parseInt(input.nextLine());
			switch (control) {
			case 0:
				System.exit(0);
				context.close();
			case 1:
				input = new Scanner(System.in);
				System.out.println("Nhập tên");
				String name = input.nextLine();
				System.out.println("Nhập mật khẩu");
				String pass = input.nextLine();
				System.out.println("Nhập email");
				String email = input.nextLine();
				System.out.println("Nhập giới tính");
				String gender = input.nextLine();
				System.out.println("Nhập quê quán");
				String country = input.nextLine();
				userDAO.create(new User(name, pass, email, gender, country));
				break;
			case 2:
				List<User> list = userDAO.findAll();
				for (User user : list) {
					System.out.println(user.getId() + " - " + user.getName() + " - " + user.getPassword() + " - "
							+ user.getEmail() + " - " + user.getGender() + " - " + user.getCountry());
				}
				break;
				
			case 3:
				userDAO.delete(30);
			default:
				break;
			}
		} while (true);

	}
}

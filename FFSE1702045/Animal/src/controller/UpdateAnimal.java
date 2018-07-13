package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Animal;
import model.dao.AnimalDAO;

@WebServlet("/UpdateAnimal")
public class UpdateAnimal extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String age = request.getParameter("age");
		String idinput = request.getParameter("id");
		int id = Integer.parseInt(idinput);
		Animal animal = new Animal(id, name, sex, age);
		AnimalDAO animalDAO = new AnimalDAO();
		try {
			if (animalDAO.updateOld(animal)) {
				response.sendRedirect("ShowAllAnimal");
			} else {
				response.sendRedirect("error.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
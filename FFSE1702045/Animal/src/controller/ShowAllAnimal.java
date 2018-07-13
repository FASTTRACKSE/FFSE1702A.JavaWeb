package controller;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Animal;
import model.dao.AnimalDAO;

/**
 * Servlet implementation class ShowAllAnimal
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/ShowAllAnimal" })
public class ShowAllAnimal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AnimalDAO animalDAO = new AnimalDAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowAllAnimal() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		int first = 1, last = 2, pages;
		if (request.getParameter("pages") == null) {
			pages = 1;
		}
		else {
			pages = (int) Integer.parseInt(request.getParameter("pages"));
			System.out.println("pages=" + pages);
		}
		int total = new AnimalDAO().getCount();
		if (total <= 2) {
			first = 0;
			last = total;
		} else {
			first = (pages - 1) * 2;
			last = 2;
		}
		ArrayList<Animal> listAnimal = animalDAO.getAllAnimals(first, last);
		animalDAO.getCount();
		request.setAttribute("listAnimal", listAnimal);
		request.setAttribute("total", total);
		request.setAttribute("last", last);
		System.out.println("Controller Total = " + total);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

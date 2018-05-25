package com.ffse.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ffse.model.DBStudent_Model;
import com.ffse.model.Student;


@WebServlet("/StudentHandler")
public class StudentHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private DBStudent_Model studentDAO;

    public StudentHandler() {
        super();
        studentDAO = new DBStudent_Model();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String action = request.getServletPath();
		String redirect="";
		try {
			switch (action) {
//			case "/new":
//				showNewForm(request, response);
//				break;
			case "/view":
				viewStudent(request, response);
				break;
//			case "/delete":
//				deleteBook(request, response);
//				break;
			case "/edit":
				editStudent(request, response);
				break;
//			case "/update":
//				updateBook(request, response);
//				break;
			case "/list":
				listStudent(request, response);
				break;
			default:
				listStudent(request, response);
				break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private void listStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Student> listStudent = studentDAO.getListUser();
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DisplayStudent.jsp");
		request.setAttribute("listStudent", listStudent);
		dispatcher.forward(request, response);
	}
	
	private void viewStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String stdnId = request.getParameter("stdnId");
		int id = Integer.parseInt(stdnId);
		Student viewStudent = studentDAO.getUser(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ViewStudent.jsp");
		request.setAttribute("viewStudent", viewStudent);
		dispatcher.forward(request, response);
	}

	private void editStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String stdnId = request.getParameter("stdnId");
		int id = Integer.parseInt(stdnId);
		Student viewStudent = studentDAO.getUser(id);
		request.setAttribute("viewStudent", viewStudent);
		if(request.getParameter("update") != null) {
			String UserCode = request.getParameter("Usercode");
			String UserName = request.getParameter("Username");
			String addr = request.getParameter("address");
			String email = request.getParameter("email");
			String classes = request.getParameter("class");
			Student editStudent = new Student();
				editStudent.setId(id);
				editStudent.setMaSV(UserCode);
				editStudent.setTenSV(UserName);
				editStudent.setDiaChi(addr);
				editStudent.setEmail(email);
				editStudent.setLop(classes);
			studentDAO.editUser(editStudent);
			request.setAttribute("editStudent", editStudent);
			String site = new String("list");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location", site);
		} else if(request.getParameter("cancel") != null) {
			String site = new String("list");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location", site);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/EditStudent.jsp");
		dispatcher.forward(request, response);
	}
}

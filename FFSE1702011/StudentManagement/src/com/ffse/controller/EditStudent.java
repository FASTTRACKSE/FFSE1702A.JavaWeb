package com.ffse.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ffse.model.DBStudent_Model;

@WebServlet("/EditStudent")
public class EditStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditStudent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("editResult", 0);
		String id = request.getParameter("id");
		DBStudent_Model dbUser = new DBStudent_Model();
		ResultSet result = dbUser.getUser(id);
		request.setAttribute("viewUser", result);
		if(request.getParameter("update") != null) {
			String UserCode = request.getParameter("Usercode");
			String UserName = request.getParameter("Username");
			String addr = request.getParameter("address");
			String email = request.getParameter("email");
			String classes = request.getParameter("class");
			int x = dbUser.editUser(UserCode, UserName, addr, email, classes, id);
			request.setAttribute("editResult", x);
		} else if(request.getParameter("cancel") != null) {
			String site = new String("http://localhost:8080/StudentManagement/DisplayStudent");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location", site);
		}
		request.getRequestDispatcher("EditStudent.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

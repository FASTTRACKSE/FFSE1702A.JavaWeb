package com.ffse.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ffse.model.DBStudent_Model;

@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddStudent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("addResult", 0);
		if(request.getParameter("addUser") != null) {
			String UserCode = request.getParameter("Usercode");
			String UserName = request.getParameter("Username");
			String sex = request.getParameter("sex");
			String addr = request.getParameter("address");
			String email = request.getParameter("email");
			String classes = request.getParameter("class");
			DBStudent_Model dbUser = new DBStudent_Model();
			int x = dbUser.addUser(UserCode, UserName, sex, addr, email, classes);
			request.setAttribute("addResult", x);
		} else if(request.getParameter("cancel") != null) {
			String site = new String("http://localhost:8080/StudentManagement/DisplayStudent");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location", site);
		}
		request.getRequestDispatcher("AddStudent.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

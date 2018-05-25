package com.ffse.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ffse.model.DBUser_Model;

@WebServlet("/EditUser")
public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("editResult", 0);
		String id = request.getParameter("id");
		DBUser_Model dbUser = new DBUser_Model();
		ResultSet result = dbUser.getUser(id);
		request.setAttribute("viewUser", result);
		if(request.getParameter("update") != null) {
			String userCode = request.getParameter("usercode");
			String userName = request.getParameter("username");
			String addr = request.getParameter("address");
			String email = request.getParameter("email");
			String classes = request.getParameter("class");
			int x = dbUser.editUser(userCode, userName, addr, email, classes, id);
			request.setAttribute("editResult", x);
		} else if(request.getParameter("cancel") != null) {
			String site = new String("http://localhost:8080/FFSE1702011/DisplayUser");
			response.setStatus(response.SC_MOVED_TEMPORARILY);
			response.setHeader("Location", site);
		}
		request.getRequestDispatcher("EditUser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

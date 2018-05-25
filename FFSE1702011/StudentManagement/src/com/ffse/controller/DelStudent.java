package com.ffse.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ffse.model.DBStudent_Model;

@WebServlet("/DelStudent")
public class DelStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DelStudent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		DBStudent_Model dbUser = new DBStudent_Model();
		int x = dbUser.delUser(id);
		request.setAttribute("delResult", x);
		request.getRequestDispatcher("DelUser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

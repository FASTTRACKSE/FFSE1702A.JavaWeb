package com.ffse.controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ffse.model.DBUser_Model;

@WebServlet("/DisplayUser")
public class DisplayUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DisplayUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBUser_Model dbUser = new DBUser_Model();
		ResultSet result = dbUser.getListUser();
		request.setAttribute("rs", result);
		request.getRequestDispatcher("ShowUser.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

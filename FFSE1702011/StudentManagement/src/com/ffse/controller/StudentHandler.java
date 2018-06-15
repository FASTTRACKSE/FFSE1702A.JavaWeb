package com.ffse.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ffse.model.DBStudent_Model;
import com.ffse.model.Student;


@MultipartConfig
@WebServlet("/StudentHandler")

public class StudentHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR = "uploadFiles";
    private DBStudent_Model studentDAO;

    public StudentHandler() {
        super();
        studentDAO = new DBStudent_Model();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String action = request.getServletPath();
		System.out.println(action);
		try {
			switch (action) {
			case "/new":
				addStudent(request, response);
				break;
			case "/view":
				viewStudent(request, response);
				break;
			case "/delete":
				delStudent(request, response);
				break;
			case "/edit":
				editStudent(request, response);
				break;
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
		String page = request.getParameter("page");
		if(page == null) {
			page = "1";
		} 
		int intPage = Integer.parseInt(page);
		int limit = 2;
		int totalStudent = studentDAO.countStudent();
		int totalPage = (int) Math.ceil(totalStudent*1.0/limit);
		if(intPage > totalPage) {
			intPage = totalPage;
		} else if(intPage < 1) {
			intPage = 1;
		}
		int start = (intPage - 1) * limit;
		List<Student> listStudent = studentDAO.getListUser(start, limit);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DisplayStudent.jsp");
		request.setAttribute("listStudent", listStudent);
		request.setAttribute("currentPage", intPage);
		request.setAttribute("lastPage", totalPage);
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
			String UserCode = request.getParameter("usercode");
			String UserName = request.getParameter("username");
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
			if(studentDAO.editUser(editStudent)) {
				response.sendRedirect("list");
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("EditStudent.jsp");
				request.setAttribute("err", "Chưa cập nhật được!");
				dispatcher.forward(request, response);
			}
		} else if(request.getParameter("cancel") != null) {
			response.sendRedirect("list");
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("EditStudent.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	private void addStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		System.out.println("123sdlkcjsdhcflsajclasjc");
		if(request.getParameter("adduser") != null) {
			System.out.println("123sdlkcjs24124dhcflsajclasjc");
			String UserCode = request.getParameter("usercode");
			String UserName = request.getParameter("username");
			String sex = request.getParameter("sex");
			String addr = request.getParameter("address");
			String email = request.getParameter("email");
			String classes = request.getParameter("class");
	        
			// gets absolute path of the web application
			String appPath = request.getServletContext().getRealPath("");

			// constructs path of the directory to save uploaded file
			String savePath = appPath + File.separator + SAVE_DIR;
			System.out.println(savePath);

			// creates the save directory if it does not exists
			File fileSaveDir = new File(savePath);
			if (!fileSaveDir.exists()) {
				fileSaveDir.mkdir();
			}
	        // obtains the upload file part in this multipart request
	        Part filePart = request.getPart("photo");
	        
	        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();

			filePart.write(savePath + File.separator + fileName);
	       
			Student addStudent = new Student();
				addStudent.setMaSV(UserCode);
				addStudent.setTenSV(UserName);
				addStudent.setGioiTinh(sex);
				addStudent.setDiaChi(addr);
				addStudent.setEmail(email);
				addStudent.setLop(classes);
	            addStudent.setHinhAnh(fileName);
			if(studentDAO.addStudent(addStudent)) {
				response.sendRedirect("list");
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("AddStudent.jsp");
				request.setAttribute("err", "Chưa cập nhật được!");
				dispatcher.forward(request, response);
			}
		} else if(request.getParameter("cancel") != null) {
			response.sendRedirect("list");
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("AddStudent.jsp");
			dispatcher.forward(request, response);
		}
	}
	
	private void delStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		String stdnId = request.getParameter("stdnId");
		int id = Integer.parseInt(stdnId);
		int delStudent = studentDAO.delStudent(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/DelStudent.jsp");
		request.setAttribute("delStudent", delStudent);
		dispatcher.forward(request, response);
	}
}

package student_controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * BookControllerServlet.java This servlet acts as a page controller for the
 * application, handling all requests from the user.
 *
 */
public class StudentControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDAO StudentDAO;

	public void init() {
		String jdbcURL = getServletContext().getInitParameter("jdbcURL");
		String jdbcUsername = getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = getServletContext().getInitParameter("jdbcPassword");

		StudentDAO = new StudentDAO(jdbcURL, jdbcUsername, jdbcPassword);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		 String action = request.getServletPath();
		if (request.getPathInfo() == null || request.getPathInfo().equals("/*")) {
			response.sendRedirect(request.getRequestURI() + "/");
		} 
		else {
			String pathInfo = (request.getPathInfo() != null ? request.getPathInfo() : "/");
			String baseURL = request.getContextPath() + action + pathInfo;
			request.setAttribute("baseURL", baseURL);
			
			try {
				switch (pathInfo) {
				case "/new":
					showNewForm(request, response);
					break;
				case "/insert":
					insertStudent(request, response);
					break;
				case "/delete":
					deleteStudent(request, response);
					break;
				case "/edit":
					showEditForm(request, response);
					break;
				case "/update":
					updateStudent(request, response);
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
	}

	private void listStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		
		int firstResult = 0 ; int maxResult = 5;int pages = 1; int total = 0;
		
		if(request.getParameter("pages") != null){
			pages = Integer.parseInt(request.getParameter("pages"));
		}
		
		total = StudentDAO.countStudent();
		if(total <= 5 ) {
			pages = 1;
			firstResult = 0;
			maxResult = total ;
		}else {
			firstResult = (pages - 1 ) * 5 ;
			maxResult = 5 ;
		}
		List<Student> listStudent = StudentDAO.getListStudent(firstResult,maxResult);
		
		request.setAttribute("listStudent", listStudent);
		request.setAttribute("total", total);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/StudentList.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewForm(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/StudentForm.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Student existingStudent = StudentDAO.getStudent(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/StudentForm.jsp");
		request.setAttribute("student", existingStudent);
		dispatcher.forward(request, response);

	}

	private void insertStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {

		String name = request.getParameter("name");
		String old = request.getParameter("old");
		String email = request.getParameter("email");
		String clas = request.getParameter("clas");

		Student newStudent = new Student(name, old, email,clas);
		StudentDAO.insertStudent(newStudent);
		response.sendRedirect("list");
	}

	private void updateStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		String name = request.getParameter("name");
		String old = request.getParameter("old");
		String email = request.getParameter("email");
		String clas = request.getParameter("clas");

		Student Student = new Student(id, name, old, email,clas );
		StudentDAO.updateStudent(Student);
		response.sendRedirect("list");
	}

	private void deleteStudent(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		Student Student = new Student(id);
		StudentDAO.deleteStudent(Student);
		response.sendRedirect("list");

	}

}

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LanguageController
 */
@WebServlet("/LanguageController")
public class LanguageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LanguageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String lang= request.getParameter("lang");
		     HttpSession sesstion=request.getSession();
		     sesstion.setAttribute("lang",lang);
		     response.sendRedirect("/JSP-pj/ListController");
		     
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

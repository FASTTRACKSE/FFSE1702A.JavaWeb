package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.AnimalDAO;
@WebServlet("/DeleteAnimal")
public class DeleteAnimal extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String ids = request.getParameter("id");
         int id = Integer.parseInt(ids);
         System.out.println(ids);
        AnimalDAO animalDAO = new AnimalDAO();
        try {
            if (animalDAO.delete(id)) {
                response.sendRedirect("ShowAllAnimal");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    

}
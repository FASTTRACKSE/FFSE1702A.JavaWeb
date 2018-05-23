package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import model.Database;
import model.KhachHang;

/**
 * Servlet implementation class Add_updateservlet
 */
@WebServlet("/khachhang/add.update")
public class Add_updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_updateservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		KhachHang kh = new KhachHang();
		String action = request.getParameter("action");
		kh.setMakh(request.getParameter("maKH"));
		String makh = kh.getMakh();
		
		kh.setHoten(request.getParameter("name"));
		String hoten = kh.getHoten();
		
		kh.setPhone(request.getParameter("phone"));
		String phone = kh.getPhone();
		
		kh.setEmail(request.getParameter("email"));
		String email = kh.getEmail();
		
		kh.setQuan(request.getParameter("quan"));
		String quan = kh.getQuan();

		
		Database db = new Database();
		
		if (action.equalsIgnoreCase("add")) {
			try {
				db.updateData("insert into Customer(Makh,Username, Quan,Phone,Email) value ('" + makh + "','" + hoten
						+ "','" + quan + "','" + phone + "','" + email + "')");
				JOptionPane.showMessageDialog(null, "Thêm thành công", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
				String site = new String("/CRUD/Khachhang");
				response.setStatus(response.SC_MOVED_TEMPORARILY);
				response.setHeader("Location", site);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "Thêm không thành công", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
			}

		} else if (action.equalsIgnoreCase("update")) {
			try {
				int Id = Integer.parseInt(request.getParameter("idKH"));
				db.updateData("update Customer set Makh = '" + makh +"', Username = '" + hoten+ "', Quan = '" +quan + "' , Phone = '" + phone +"', Email = '" +email + "' where Id = " + Id);
				JOptionPane.showMessageDialog(null, "Cập nhật thành công", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
				String site = new String("/CRUD/Khachhang");
				response.setStatus(response.SC_MOVED_TEMPORARILY);
				response.setHeader("Location", site);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				JOptionPane.showMessageDialog(null, "Cập nhật không thành công", "Thông báo", JOptionPane.INFORMATION_MESSAGE);
			}
		}
	}

}

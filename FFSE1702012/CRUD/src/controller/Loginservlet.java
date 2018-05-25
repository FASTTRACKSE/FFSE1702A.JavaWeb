package controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import model.Database;

/**
 * Servlet implementation class Loginservlet
 */
@WebServlet("/khachhang/login")
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String pass = request.getParameter("psw");
		HttpSession session = request.getSession(true);

		// MD5

		// Create a new instance of MessageDigest, using MD5. SHA and other
		// digest algorithms are also available.
		MessageDigest alg;
		try {
			alg = MessageDigest.getInstance("MD5");

			// Reset the digest, in case it's been used already during this section of code
			// This probably isn't needed for pages of 210 simplicity
			alg.reset();

			// Calculate the md5 hash for the password. md5 operates on bytes, so give
			// MessageDigest the byte verison of the string
			alg.update(pass.getBytes());

			// Create a byte array from the string digest
			byte[] digest = alg.digest();

			// Convert the hash from whatever format it's in, to hex format
			// which is the normal way to display and report md5 sums
			// This is done byte by byte, and put into a StringBuffer
			StringBuffer passmd5 = new StringBuffer();
			String hx;
			for (int i = 0; i < digest.length; i++) {
				hx = Integer.toHexString(0xFF & digest[i]);
				// 0x03 is equal to 0x3, but we need 0x03 for our md5sum
				if (hx.length() == 1) {
					hx = "0" + hx;
				}
				passmd5.append(hx);
			}
			Database db = new Database();
			ResultSet rs = db.getData(
					"select * from Admin where BINARY Username = '" + username + "' and Password = '" + passmd5 + "'");
			int i = 0;
			while (rs.next()) {
				i++;
			}
			if (i > 0) {
				session.setAttribute("Username", username);
				session.setAttribute("Password", passmd5);

				// New location to be redirected
				String site = new String("/CRUD/Khachhang");
				response.setStatus(response.SC_MOVED_TEMPORARILY);
				response.setHeader("Location", site);
			} else {
				JOptionPane.showMessageDialog(null, "�?ăng nhập thất bại", "Thông báo lỗi", JOptionPane.ERROR_MESSAGE);
				String site = new String("/CRUD/Khachhang1/Login.jsp");
				response.setStatus(response.SC_MOVED_TEMPORARILY);
				response.setHeader("Location", site);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Loi " + e);
		}
	}

}

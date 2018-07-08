package View;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.PreparedStatement;

import Controller.DBHelper;
import Controller.OrganizationController;
import Controller.UserController;

/**
 * Servlet implementation class Resetpassword
 */
@WebServlet("/Resetpassword")
public class Resetpassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Resetpassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();

			HttpSession ses = request.getSession();
			String userid = (String) ses.getAttribute("user");
			String type = (String) ses.getAttribute("usertype");
			String password = (String) request.getParameter("password");
			String curr_password = (String) request.getParameter("curr_password");

			if (type.equals("user")) {
				if (UserController.Checkcurrnetpassword(userid, curr_password)) {
					if (UserController.Changepassword(userid, password)) {
						out.println("Password Updated");
						out.flush();
					}
				} else {
					out.println("Current password mismatch");
					out.flush();
				}
			} else if (type.equals("organization")) {
				if (OrganizationController.Checkcurrnetpassword(userid, curr_password)) {
					if (OrganizationController.Changepassword(userid, password)) {
						out.println("Password Updated");
						out.flush();
					}
				} else {
					out.println("Current password mismatch");
					out.flush();
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

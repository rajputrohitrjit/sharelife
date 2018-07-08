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

/**
 * Servlet implementation class Changepassword
 */
@WebServlet("/Changepassword")
public class Changepassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Changepassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			PrintWriter out = response.getWriter();

			HttpSession ses = request.getSession();
			String userid = (String) ses.getAttribute("user");
			String type = (String) ses.getAttribute("usertype");

			String password = (String) request.getParameter("password");
			if (type.equals("user")) {
				Connection cn = DBHelper.openConnection();
				String query = "update user set password = ? where emailid = ?";
				PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, password);
				smt.setString(2, userid);
				smt.executeUpdate();
				out.println("<script>alert('password updated');  </script>");
				System.out.println("updated");
				response.sendRedirect("Login?type=" + type + "&userid=" + userid + "&source=otp");
			} else if (type.equals("organization")) {
				Connection cn = DBHelper.openConnection();
				String query = "update organization set password = ? where organization_id = ?";
				PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, password);
				smt.setString(2, userid);
				smt.executeUpdate();
				out.println("<script>alert('password updated');  </script>");
				System.out.println("updated");
				response.sendRedirect("Login?type=" + type + "&userid=" + userid + "&source=otp");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

package View;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.OTPGeneration;

/**
 * Servlet implementation class OTPCheck
 */
@WebServlet("/OTPCheck")
public class OTPCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OTPCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String otp = request.getParameter("userotp").trim();
		String user = request.getParameter("userid").trim();
		String type = request.getParameter("usertype").trim();
		if (type.equalsIgnoreCase("user")) {

			if (OTPGeneration.CheckOTP(user + "/" + otp)) {
				// sent it to reset the password
				HttpSession ses = request.getSession();
				ses.putValue("user", user);
				ses.putValue("usertype", type);
				response.sendRedirect("Changepassword.jsp");
				// response.sendRedirect("Login?type="+type+"&userid="+user+"&source=otp");
			} else {
				System.out.println("invalid");
			}
		} else if (type.equalsIgnoreCase("organization")) {
			if (OTPGeneration.CheckOTP(user + "/" + otp)) {
				HttpSession ses = request.getSession();
				ses.putValue("user", user);
				ses.putValue("usertype", type);
				response.sendRedirect("Changepassword.jsp");
				// response.sendRedirect("Login?type="+type+"&userid="+user+"&source=otp");
			} else {
				System.out.println("Organization invalid");

			}
		}

		/*
		 * if(OTPGeneration.CheckOTP(user+"/"+otp)){ System.out.println(
		 * "user login"); }else{ System.out.println("invalid"); }
		 */
	}

}

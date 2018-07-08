package View;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.OTPGeneration;

/**
 * Servlet implementation class veryfyotp
 */
@WebServlet("/veryfyotp")
public class veryfyotp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public veryfyotp() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String message = null;

		System.out.print("here");
		String type = request.getParameter("usertype").trim();
		if (type.equals("org")) {
			String emailid = request.getParameter("useremail").trim();
			String id = request.getParameter("userid").trim();
			String otp = request.getParameter("userotp").trim();
			if (OTPGeneration.CheckOTP(emailid + "/" + otp)) {
				message = "<html><head><script>alert('Registration Completed'); window.location.assign('/sharelife/Login.jsp')</script></head><body></body></html>";
				out.println(message);
				out.flush();
			} else {
				message = "<html><head><script>alert('Registration Failed      OTP incorrect or timeout..'); window.location.assign('/sharelife/Login.jsp')</script></head><body></body></html>";
				out.println(message);
				out.flush();
			}
		} else if (type.equals("user")) {
			String emailid = request.getParameter("useremail").trim();
			String id = request.getParameter("userid").trim();
			String otp = request.getParameter("userotp").trim();
			if (OTPGeneration.CheckOTP(emailid + "/" + otp)) {
				message = "<html><head><script>alert('Registration Completed'); window.location.assign('/sharelife/Login.jsp')</script></head><body></body></html>";
				out.println(message);
				out.flush();
			} else {
				message = "<html><head><script>alert('Registration Failed      OTP incorrect or timeout..'); window.location.assign('/sharelife/Login.jsp')</script></head><body></body></html>";
				out.println(message);
				out.flush();
			}
		}
	}

}

package View;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.OTPGeneration;
import Controller.OrganizationController;
import Controller.SendGmail;

/**
 * Servlet implementation class RecoverPassword
 */
@WebServlet("/RecoverPassword")
public class RecoverPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RecoverPassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type4");
		if (type.equalsIgnoreCase("user")) {
			String useremail = request.getParameter("recovery");
			// Varify that the user is present in database or not
			if (OTPGeneration.CheckValidity(useremail, type)) {
				// genera otp
				String otp = OTPGeneration.GenerateOTP(useremail);

				OTPGeneration O = new OTPGeneration();
				O.setOtp(useremail + "/" + otp);
				SendGmail.OTPmail(otp, useremail);

				O.StartCountdown();
				HttpSession ses = request.getSession();
				ses.putValue("email-otp", useremail);
				ses.putValue("usertype", "user");
				response.sendRedirect("LoginOTP.jsp");
			}
		} else if (type.equalsIgnoreCase("organization")) {
			String userid = request.getParameter("recovery");
			if (OTPGeneration.CheckValidity(userid, type)) {
				String otp = OTPGeneration.GenerateOTP(userid);

				OTPGeneration O = new OTPGeneration();
				O.setOtp(userid + "/" + otp);
				SendGmail.OTPmail(otp, OrganizationController.getOrganizationEmail(userid));

				O.StartCountdown();
				HttpSession ses = request.getSession();
				ses.putValue("email-otp", userid);
				ses.putValue("usertype", "organization");
				response.sendRedirect("LoginOTP.jsp");
			}
		}
	}

}

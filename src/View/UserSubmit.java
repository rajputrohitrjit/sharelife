
package View;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.OTPGeneration;
import Controller.SendGmail;
import Controller.UserController;
import Model.User;

/**
 * Servlet implementation class UserSubmit
 */
@WebServlet("/UserSubmit")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class UserSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserSubmit() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println(request.getParameter("eid"));
		System.out.println(request.getParameter("fname"));
		if (!UserController.CheckUser(request.getParameter("eid").trim())) {
			User A = new User();
			A.setUsername(request.getParameter("fname") + " " + request.getParameter("lname"));
			A.setEmailid(request.getParameter("eid"));
			A.setPassword(request.getParameter("pword"));
			A.setDob(request.getParameter("dob"));
			A.setGender(request.getParameter("gder"));
			A.setBloodgroup(request.getParameter("bgroup"));
			A.setWeight(request.getParameter("wght"));
			A.setResidencephone(request.getParameter("rphone"));
			A.setMobileno(request.getParameter("mno"));
			A.setAddress(request.getParameter("aress"));
			A.setState(request.getParameter("state"));
			A.setCity(request.getParameter("city"));
			boolean st = UserController.AddNewRecord(A);
			if (st) {
				HttpSession ses = request.getSession();
				ses.putValue("stype", "user");
				ses.putValue("SUSER", A);

				String emailid = A.getEmailid().trim();
				String otp = OTPGeneration.GenerateOTP(emailid);
				OTPGeneration T = new OTPGeneration();
				T.setOtp(emailid + "/" + otp);
				SendGmail.OTPmail(otp, emailid);
				T.StartCountdown();

				response.sendRedirect("ByPass.jsp");
			} else {
				String message = "<html><head><script>alert('Registration Failed...'); window.location.assign('/sharelife/UserRegistration.jsp')</script></head><body></body></html>";
				out.println(message);
				out.flush();
			}
		} else {
			String message = "<html><head><script>alert('Account for email id : " + request.getParameter("eid").trim()
					+ " already exist..'); window.location.assign('/sharelife/index.html')</script></head><body></body></html>";
			out.println(message);
			out.flush();
		}

	}

}

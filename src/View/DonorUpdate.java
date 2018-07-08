package View;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Controller.UserController;
import Model.User;

/**
 * Servlet implementation class DonorUpdate
 */
@WebServlet("/DonorUpdate")
public class DonorUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DonorUpdate() {
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
		try {
			HttpSession ses = request.getSession();
			User A = (User) ses.getValue("SUSER");
			User U = new User();
			U.setUserid(A.getUserid());
			U.setUsername(request.getParameter("username").trim());
			U.setEmailid(request.getParameter("email").trim());
			U.setDob(request.getParameter("dob").trim());
			U.setGender(request.getParameter("gder").trim());
			U.setBloodgroup(request.getParameter("bgroup").trim());
			U.setWeight(request.getParameter("wght").trim());
			U.setResidencephone(request.getParameter("rphone").trim());
			U.setMobileno(request.getParameter("mno").trim());
			U.setAddress(request.getParameter("adress").trim());
			U.setState(request.getParameter("state").trim());
			U.setCity(request.getParameter("city").trim());

			if (UserController.UpdateRecord(A)) {
				ses.putValue("SUSER", U);
				String message = "<html><head><script>alert('Record Updated'); window.location.assign('/sharelife/DonorUpdate.jsp')</script></head><body></body></html>";
				out.println(message);
				out.flush();
			} else {
				throw new Exception("Some error occure");
			}
		} catch (Exception e) {
			String message = "<html><head><script>alert('Record Updatation Fail...'); window.location.assign('/sharelife/DonorUpdate.jsp')</script></head><body></body></html>";
			out.println(message);
			out.flush();
		}
	}

}

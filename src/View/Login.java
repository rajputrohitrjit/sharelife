package View;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.http.*;

import com.sun.xml.internal.ws.resources.HttpserverMessages;

import Controller.OrganizationController;
import Controller.UserController;
import Model.Organization;
import Model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		String source = request.getParameter("source");
		try {
			if (source.equals("login")) {
				// check the type
				if (type.equals("user")) {
					ResultSet rs = UserController.CheckPassword(userid, password);
					if (rs.next()) {
						User U = new User();
						U.setUserid(rs.getString(1));
						U.setUsername(rs.getString(2));
						U.setEmailid(rs.getString(3));
						U.setDob(rs.getString(4));
						U.setGender(rs.getString(5));
						U.setBloodgroup(rs.getString(6));
						U.setWeight(rs.getString(7));
						U.setResidencephone(rs.getString(8));
						U.setMobileno(rs.getString(9));
						U.setAddress(rs.getString(10));
						U.setState(rs.getString(11));
						U.setCity(rs.getString(12));
						HttpSession ses = request.getSession();
						ses.putValue("SUSER", U);
						ses.putValue("STYPE", "user");
						ses.putValue("STIME", new java.util.Date().toString());

						ses.putValue("user", U.getEmailid());
						ses.putValue("usertype", type);

						Cookie userid1 = new Cookie("Loggedin1", userid);
						Cookie password1 = new Cookie("Loggedin2", password);
						Cookie type1 = new Cookie("Loggedin3", type);
						Cookie source1 = new Cookie("Loggedin4", "login");

						userid1.setMaxAge(60 * 60 * 24);
						password1.setMaxAge(60 * 60 * 24);
						type1.setMaxAge(60 * 60 * 24);
						source1.setMaxAge(60 * 60 * 24);

						response.addCookie(userid1);
						response.addCookie(password1);
						response.addCookie(type1);
						response.addCookie(source1);

						response.sendRedirect("DonorHome.jsp");
					} else {
						out.println("<html><head></head><body><p>");
						out.println(
								"Invalid Username and Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='Login.jsp'>Retry</a>");
						out.println("</p></body></html>");
						out.flush();
					}
				} else if (type.equals("organization")) {
					ResultSet rs = OrganizationController.OrganizationLoginCheck(userid, password);
					if (rs.next()) {
						Organization O = new Organization();
						O.setOrganization_id(rs.getString(1));
						O.setOrganization_name(rs.getString(2));
						O.setCentral_office_address(rs.getString(3));
						O.setEmail(rs.getString(4));
						O.setWebsite(rs.getString(5));
						O.setType(rs.getString(6));
						O.setAdministrative_address(rs.getString(7));
						O.setAdministrative_email(rs.getString(8));
						O.setAdministrative_phone(rs.getString(9));
						O.setAdministrative_fax(rs.getString(10));
						O.setLogo(rs.getString(12));
						O.setFristname(rs.getString(13));
						O.setLastname(rs.getString(14));
						HttpSession ses = request.getSession();
						ses.putValue("SORG", O);
						ses.putValue("STYPE", "org");
						ses.putValue("STIME", new java.util.Date().toString());

						ses.putValue("user", O.getOrganization_id());
						ses.putValue("usertype", type);

						Cookie userid1 = new Cookie("Loggedin1", userid);
						Cookie password1 = new Cookie("Loggedin2", password);
						Cookie type1 = new Cookie("Loggedin3", type);
						Cookie source1 = new Cookie("Loggedin4", "login");

						// cookies are only valid for 1 day
						userid1.setMaxAge(60 * 60 * 24);
						password1.setMaxAge(60 * 60 * 24);
						type1.setMaxAge(60 * 60 * 24);
						source1.setMaxAge(60 * 60 * 24);

						response.addCookie(userid1);
						response.addCookie(password1);
						response.addCookie(type1);
						response.addCookie(source1);

						response.sendRedirect("OrganizationHome.jsp");
					} else {
						out.println("<html><head></head><body><p>");
						out.println(
								"Invalid Username and Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='Login.jsp'>Retry</a>");
						out.println("</p></body></html>");
						out.flush();
					}
				}
			}

			else if (source.equals("otp")) {

				// check the type
				if (type.equalsIgnoreCase("user")) {
					ResultSet rs = UserController.UserLoginOTP(userid);
					if (rs.next()) {
						User U = new User();
						U.setUserid(rs.getString(1));
						U.setUsername(rs.getString(2));
						U.setEmailid(rs.getString(3));
						password = rs.getString(4);
						U.setDob(rs.getString(5));
						U.setGender(rs.getString(6));
						U.setBloodgroup(rs.getString(7));
						U.setWeight(rs.getString(8));
						U.setResidencephone(rs.getString(10));
						U.setMobileno(rs.getString(11));
						U.setAddress(rs.getString(12));
						U.setState(rs.getString(13));
						U.setCity(rs.getString(14));

						HttpSession ses = request.getSession();
						ses.putValue("SUSER", U);
						ses.putValue("STYPE", "org");
						ses.putValue("STIME", new java.util.Date().toString());

						ses.putValue("user", U.getEmailid());
						ses.putValue("usertype", type);

						// making cookies
						Cookie userid1 = new Cookie("Loggedin1", userid);
						Cookie password1 = new Cookie("Loggedin2", password);
						Cookie type1 = new Cookie("Loggedin3", type);
						Cookie source1 = new Cookie("Loggedin4", "login");

						userid1.setMaxAge(60 * 60 * 24);
						password1.setMaxAge(60 * 60 * 24);
						type1.setMaxAge(60 * 60 * 24);
						source1.setMaxAge(60 * 60 * 24);

						response.addCookie(userid1);
						response.addCookie(password1);
						response.addCookie(type1);
						response.addCookie(source1);

						response.sendRedirect("DonorHome.jsp");
					} else {
						out.println("<html><head></head><body><p>");
						out.println(
								"Invalid Username and Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='Login.jsp'>Retry</a>");
						out.println("</p></body></html>");
						out.flush();
					}
				} else if (type.equalsIgnoreCase("organization")) {
					ResultSet rs = OrganizationController.OrganizationLogin(userid);
					if (rs.next()) {
						Organization O = new Organization();
						O.setOrganization_id(rs.getString(1));
						O.setOrganization_name(rs.getString(2));
						O.setCentral_office_address(rs.getString(3));
						O.setEmail(rs.getString(4));
						O.setWebsite(rs.getString(5));
						O.setType(rs.getString(6));
						O.setAdministrative_address(rs.getString(7));
						O.setAdministrative_email(rs.getString(8));
						O.setAdministrative_phone(rs.getString(9));
						O.setAdministrative_fax(rs.getString(10));
						O.setLogo(rs.getString(12));

						password = rs.getString(11);

						HttpSession ses = request.getSession();
						ses.putValue("SORG", O);
						ses.putValue("STYPE", "org");
						ses.putValue("STIME", new java.util.Date().toString());

						ses.putValue("user", O.getOrganization_id());
						ses.putValue("usertype", type);

						// making cookies
						Cookie userid1 = new Cookie("Loggedin1", userid);
						Cookie password1 = new Cookie("Loggedin2", password);
						Cookie type1 = new Cookie("Loggedin3", type);
						Cookie source1 = new Cookie("Loggedin4", "login");

						userid1.setMaxAge(60 * 60 * 24);
						password1.setMaxAge(60 * 60 * 24);
						type1.setMaxAge(60 * 60 * 24);
						source1.setMaxAge(60 * 60 * 24);

						response.addCookie(userid1);
						response.addCookie(password1);
						response.addCookie(type1);
						response.addCookie(source1);

						response.sendRedirect("OrganizationHome.jsp");
					} else {
						out.println("<html><head></head><body><p>");
						out.println(
								"Invalid Username and Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href='Login.jsp'>Retry</a>");
						out.println("</p></body></html>");
						out.flush();
					}
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

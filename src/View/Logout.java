package View;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.xml.internal.ws.resources.HttpserverMessages;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Logout() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		ses.setAttribute("SORG",null);
		ses.invalidate();

		Cookie cookies[] = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("Loggedin1")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			} else if (cookie.getName().equals("Loggedin2")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			} else if (cookie.getName().equals("Loggedin3")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			} else if (cookie.getName().equals("Loggedin4")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		
		
		response.sendRedirect("index.html");
	}

}

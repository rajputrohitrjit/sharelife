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

import Controller.EventController;

/**
 * Servlet implementation class EventDetails
 */
@WebServlet("/EventDetails")
public class EventDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {

			PrintWriter out = response.getWriter();

			// for 101 = EVENT ID

			ResultSet rs = EventController.EventDetails(request.getParameter("101"));
			Model.EventDetails E = new Model.EventDetails();
			if (rs.next()) {
				E.setENAME(rs.getString("name"));
				E.setDATE(rs.getString("date"));
				E.setTIME(rs.getString("time"));
				E.setSTATE(rs.getString("state"));
				E.setCITY(rs.getString("city"));
				E.setADDRESS(rs.getString("address"));
				E.setMESSAGE(rs.getString("message"));
				E.setONAME(rs.getString("oname"));
				E.setOID(rs.getString("organizationid"));
				E.setWEBSITE(rs.getString("owebsite"));
				E.setCOORDINATORNAME(rs.getString("coordinator_name"));
				E.setCOORDINATORPHONE(rs.getString("coordinator_phone"));
				E.setCOORDINATOREMAIL(rs.getString("coordinator_email"));

				HttpSession ses = request.getSession();
				ses.putValue("ED", E);
			} else {
				throw new Exception();
			}
			response.sendRedirect("EventDetails.jsp");
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

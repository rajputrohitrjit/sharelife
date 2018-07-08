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

import com.sun.mail.imap.protocol.MailboxInfo;
import com.sun.xml.internal.ws.client.SenderException;

import Controller.EventController;

import Model.Event;
import Model.Organization;
import Controller.SendGmail;

/**
 * Servlet implementation class EventSubmit
 */
@WebServlet("/EventSubmit")
public class EventSubmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventSubmit() {
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
		Event E = new Event();
		E.setName(request.getParameter("eventname"));
		E.setDate(request.getParameter("date"));
		E.setTime(request.getParameter("time"));
		E.setAddress(request.getParameter("address"));
		E.setStateid(request.getParameter("state"));
		E.setCityid(request.getParameter("city"));
		E.setMessage(request.getParameter("message"));
		E.setCoordinator_name(request.getParameter("coordinator_name"));
		E.setCoordinator_phone(request.getParameter("coordinator_phone"));
		E.setCoordinator_emailid(request.getParameter("coordinator_emailid"));

		HttpSession ses = request.getSession();
		Organization O = (Organization) ses.getValue("SORG");

		E.setOrganizationid(O.getOrganization_id());

		// Make the entry in database for an event
		boolean sn = EventController.EventEntry(E);

		// Search for the donors
		ResultSet rs = EventController.DonorsDetect(E.getCityid());
		try {
			if (rs.next()) {
				// create the message for the donor
				String message = EventController.EmailCreator(E, O);

				// --------------------------------------------------- Go for
				// Google SMTP server for sending gmail
				// -----------------------------------

				Controller.SendGmail.mail(message, rs);

				out.println("Event Registered");
				out.flush();
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}

}

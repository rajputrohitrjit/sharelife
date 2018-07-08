package View;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import Controller.CertificationController;
import Controller.DBHelper;
import Model.Certification;
import Model.Organization;

/**
 * Servlet implementation class OrganizationCertificationJSON
 */
@WebServlet("/OrganizationCertificationJSON")
public class OrganizationCertificationJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrganizationCertificationJSON() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		Organization O = (Organization) ses.getValue("SORG");
		PrintWriter out = response.getWriter();
		ResultSet rs = CertificationController.GetCertificationByID(O.getOrganization_id());
		ArrayList<JSONObject> org = DBHelper.jsonengine(rs);
		out.println(org);
	}
}

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

import org.json.JSONObject;

import Controller.DBHelper;
import Controller.UserController;

/**
 * Servlet implementation class DonarMetaJSON
 */
@WebServlet("/DonarMetaJSON")
public class DonarMetaJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DonarMetaJSON() {
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
		String bloodgroup = request.getParameter("bg");
		String state = request.getParameter("st");
		String city = request.getParameter("ci");

		ResultSet rs = UserController.DonarsMeta(bloodgroup, state, city);
		ArrayList<JSONObject> obj = DBHelper.jsonengine(rs);
		out.println(obj);
	}
}

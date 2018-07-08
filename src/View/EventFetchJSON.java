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
import Controller.EventController;

/**
 * Servlet implementation class EventFetchJSON
 */
@WebServlet("/EventFetchJSON")
public class EventFetchJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EventFetchJSON() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// fetch the events
		PrintWriter out = response.getWriter();
		ResultSet rs = EventController.FetchEvents();
		ArrayList<JSONObject> obj = DBHelper.jsonengine(rs);
		out.println(obj);
	}
}

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
 * Servlet implementation class CityDonarMetaJSON
 */
@WebServlet("/CityDonarMetaJSON")
public class CityDonarMetaJSON extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CityDonarMetaJSON() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ResultSet rs = UserController.GetDonorsByCity(request.getParameter("city"), request.getParameter("bg"));
		ArrayList<JSONObject> obj = DBHelper.jsonengine(rs);
		out.println(obj);
	}

}

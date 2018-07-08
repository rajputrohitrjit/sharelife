package View;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Controller.*;

/**
 * Servlet implementation class StartDemon
 */
@WebServlet("/StartDemon")
public class StartDemon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StartDemon() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init()
			throws ServletException { /*
										 * <servlet>
										 * <servlet-name>StartDemon</servlet-
										 * name>
										 * <servlet-class>View.StartDemon</
										 * servlet-class>
										 * <load-on-startup>1</load-on-startup>
										 * </servlet>
										 */

		
		 System.out.println("Servlet called"); BackGroundProcess.StartDemon();
		 
	}

	
	 
	 

}

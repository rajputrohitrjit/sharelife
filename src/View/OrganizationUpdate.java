package View;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.softech.FileUpload;

import Controller.OrganizationController;
import Model.Organization;

/**
 * Servlet implementation class OrganizationUpdate
 */
@WebServlet("/OrganizationUpdate")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class OrganizationUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrganizationUpdate() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// fetch the id from the request session
			HttpSession ses = request.getSession();
			Organization O = (Organization) ses.getValue("SORG");

			Organization otemp = new Organization();
			otemp.setOrganization_id(O.getOrganization_id());
			otemp.setOrganization_name(request.getParameter("orgname"));
			otemp.setCentral_office_address(request.getParameter("officeadd"));
			otemp.setEmail(request.getParameter("orgemail"));
			otemp.setWebsite(request.getParameter("orgwebsite"));
			otemp.setFristname(request.getParameter("hfname"));
			otemp.setLastname(request.getParameter("hlname"));
			otemp.setAdministrative_address(request.getParameter("add"));
			otemp.setAdministrative_email(request.getParameter("emailid"));
			otemp.setAdministrative_phone(request.getParameter("contactno"));
			otemp.setAdministrative_fax(request.getParameter("faxno"));

			/*
			 * if(request.getParameterMap().containsKey("orglogo")){ Part part =
			 * request.getPart("orglogo"); String savepath
			 * ="C:/Users/tanmay/workspaceMars/sharelife/WebContent/organization_logo";
			 * FileUpload F = new FileUpload(part, savepath);
			 * otemp.setLogo(F.filename); }else{ otemp.setLogo(O.getLogo()); }
			 */
			if (request.getParameter("logoholo").toLowerCase().contains("organization_logo")) {
				otemp.setLogo(O.getLogo());
			} else {
				Part part = request.getPart("orglogo");
				String savepath = "C:/Users/tanmay/workspaceMars/sharelife/WebContent/organization_logo";
				FileUpload F = new FileUpload(part, savepath);
				otemp.setLogo(F.filename);
			}

			OrganizationController.OrganizationUpdate(otemp);
			ses.setAttribute("SORG", otemp);
		} catch (Exception e) {
			System.out.println("OrganizationUpdateServlet " + e);
		}
	}

}

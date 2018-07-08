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

import com.sun.mail.iap.Response;

import Controller.CertificationController;
import Controller.OTPGeneration;
import Controller.OrganizationController;
import Controller.SendGmail;
import Model.Certification;
import Model.Organization;

/**
 * Servlet implementation class organization_view
 */
@WebServlet("/organization_view")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class organization_view extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public organization_view() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession ses = request.getSession();
		PrintWriter out = response.getWriter();
		if (ses != null) {
			if (!OTPGeneration.CheckValidity(request.getParameter("email").trim(), "organization")) {
				out.println("<html>");
				Organization O = new Organization();
				O.setOrganization_name(request.getParameter("organization_name"));
				O.setCentral_office_address(request.getParameter("central_office_address"));
				O.setEmail(request.getParameter("email"));
				O.setWebsite(request.getParameter("website"));
				O.setType(request.getParameter("type"));
				O.setFristname(request.getParameter("administrative_head_first_name"));
				O.setLastname(request.getParameter("administrative_head_last_name"));
				O.setAdministrative_address(request.getParameter("administrative_address"));
				O.setAdministrative_email(request.getParameter("administrative_email"));
				O.setAdministrative_phone(request.getParameter("administrative_phoneno"));
				O.setAdministrative_fax(request.getParameter("administrative_fax"));
				O.setPassword(request.getParameter("password"));

				String savepath = "C:/Users/tanmay/workspaceMars/sharelife/WebContent/organization_logo";
				Part part = request.getPart("organization_logo");
				FileUpload F = new FileUpload(part, savepath);
				O.setLogo(F.filename);
				boolean sn = OrganizationController.OganizationRegistrationSubmit(O);

				String[] add = { "add[0]", "add[1]", "add[2]", "add[3]", "add[4]" };
				int count = Integer.parseInt(request.getParameter("certificateno"));
				if (count > 0) {
					Certification C = new Certification();
					C.setOrganization_id(String.valueOf(
							CertificationController.getorganizationid(request.getParameter("organization_name"))));
					String path = "C:/Users/tanmay/workspaceMars/sharelife/WebContent/certificate";
					for (int i = 0; i <= count - 1; i++) {
						part = request.getPart("" + add[i] + "");
						F = new FileUpload(part, path);
						C.setCertificate(F.filename);
						sn = CertificationController.addCertificate(C);
					}
				}

				if (sn) {
					out.println("Record submitted");
					ses = request.getSession();
					O.setOrganization_id(OrganizationController.GetID(O));
					ses.putValue("SORG", O);

					String useremail = O.getEmail();
					String user = O.getOrganization_id();
					String otp = OTPGeneration.GenerateOTP(user);
					OTPGeneration T = new OTPGeneration();
					T.setOtp(user + "/" + otp);
					SendGmail.OTPmail(otp, useremail);
					T.StartCountdown();
					response.sendRedirect("ByPass.jsp");
				} else {
					out.println("Not submitted// Someting goes wrong");
					response.sendRedirect("OrganizationRegistration.jsp");
				}
				out.println("</html>");
				out.flush();
			} else {
				String frame = "<html><head><script src = 'js/jquery-2.2.1.min.js'></script><script>$(document).ready(function(){alert('Account already exist with Email ID : "
						+ request.getParameter("email").trim()
						+ "');window.location.replace('/sharelife/Login.jsp');});</script><head/><body></body></html>";
				out.println(frame);
				out.flush();
			}
		} else {
			Organization O = (Organization) ses.getValue("SORG");
			String frame = "<html><head><script src = 'js/jquery-2.2.1.min.js'></script><script>$(document).ready(function(){alert('"
					+ O.getOrganization_name()
					+ ",&nbsp;Already loged in<br>You can't two accounts on same machine');window.location.replace('/sharelife/index.html');});</script><head/><body></body></html>";
			out.println(frame);
			out.flush();
		}
	}

}

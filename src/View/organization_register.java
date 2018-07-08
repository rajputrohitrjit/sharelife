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

import Controller.CertificationController;
import Controller.OTPGeneration;
import Controller.OrganizationController;
import Controller.SendGmail;
import Model.Certification;
import Model.Organization;

/**
 * Servlet implementation class organization_register
 */
@WebServlet("/organization_register")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50)
public class organization_register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public organization_register() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String message = "<html><head></head><body>Processing...</body></html>";
		out.println(message);

		// Check weather it is already registered or not
		if (!OrganizationController.CheckOrganization(request.getParameter("email").trim())) {

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

			// Upload the logo..
			String savepath = "C:/Users/tanmay/workspaceMars/sharelife/WebContent/organization_logo";
			Part part = request.getPart("organization_logo");
			FileUpload F = new FileUpload(part, savepath);
			O.setLogo(F.filename);
			// register to database
			boolean sn = OrganizationController.OganizationRegistrationSubmit(O);

			// Upload the documents...
			String[] add = { "add[0]", "add[1]", "add[2]", "add[3]", "add[4]" };
			int count = Integer.parseInt(request.getParameter("certificateno"));
			if (count > 0) {
				Certification C = new Certification();
				C.setOrganization_id(String
						.valueOf(CertificationController.getorganizationid(request.getParameter("organization_name"))));
				String path = "C:/Users/tanmay/workspaceMars/sharelife/WebContent/certificate";
				for (int i = 0; i <= count - 1; i++) {
					part = request.getPart("" + add[i] + "");
					F = new FileUpload(part, path);
					C.setCertificate(F.filename);
					sn = CertificationController.addCertificate(C);
				}
			}

			//
			if (sn) {
				HttpSession ses = request.getSession();
				ses = request.getSession();
				O.setOrganization_id(OrganizationController.GetID(O));
				ses.putValue("SORG", O);

				ses.putValue("stype", "org");
				String emailid = O.getEmail().trim();
				String otp = OTPGeneration.GenerateOTP(emailid);
				OTPGeneration T = new OTPGeneration();
				T.setOtp(emailid + "/" + otp);
				SendGmail.OTPmail(otp, emailid);
				T.StartCountdown();
			}
			response.sendRedirect("ByPass.jsp");
		} else {
			// Print the message that it already exist...
			message = "<html><head><script>alert('Account for email id : " + request.getParameter("email").trim()
					+ " already exist..'); window.location.assign('/sharelife/index.html')</script></head><body></body></html>";
			out.println(message);
			out.flush();
		}
	}

}

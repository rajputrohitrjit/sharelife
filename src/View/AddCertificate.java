package View;

import java.io.IOException;
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
import Model.Certification;
import Model.Organization;
import Controller.CertificationController;

/**
 * Servlet implementation class AddCertificate
 */
@WebServlet("/AddCertificate")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class AddCertificate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddCertificate() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			HttpSession ses = request.getSession();
			Organization O = (Organization) ses.getValue("SORG");
			String savepath = "C:/Users/tanmay/workspaceMars/sharelife/WebContent/certificate";
			Part part = request.getPart("newcerti");
			FileUpload F = new FileUpload(part, savepath);
			Certification C = new Certification();
			C.setOrganization_id(O.getOrganization_id());
			C.setCertificate(F.filename);
			Controller.CertificationController.AddCertificate(C);

		} catch (Exception e) {
			System.out.println("here is the errot " + e);
		}
	}

}

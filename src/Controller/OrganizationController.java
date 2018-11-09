package Controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;
import java.sql.*;
import Model.Organization;

interface OrganizatgionInterface {
	public String ORGANIZATION_ID = "organization_id";
	public String ORGANIZATION_NAME = "organization_name";
	public String ORGANIZATION_CENTRAL_OFFICE_ADDRESS = "central_office_address";
	public String ORGANIZATION_EMAIL = "email";
	public String ORGANIZATION_WEBSITE = "website";
	public String ORGANIZATION_TYPE = "type";
	public String ORGANIZATION_ADMINISTRATIVE_ADDRESS = "administrative_address";
	public String ORGANIZATION_ADMINISTRATIVE_EMAIL = "administrative_email";
	public String ORGANIZATION_ADMINISTRATIVE_PHONE = "administrative_phone";
	public String ORGANIZATION_ADMINISTRATIVE_FAX = "administrative_fax";
	public String ORGANIZATION_PASSWORD = "password";
	public String ORGANIZATION_LOGO = "logo";
	public String ORGANIZATION_FIRSTNAME = "firstname";
	public String ORGANIZATION_LASTNAME = "lastname";
}

public class OrganizationController implements OrganizatgionInterface {
	public static boolean OganizationRegistrationSubmit(Organization O) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "insert into organization(organization_name,central_office_address,email,website,type,administrative_address,administrative_email,administrative_phone,administrative_fax,password,logo,firstname,lastname) values ('"
			//		+ O.getOrganization_name() + "','" + O.getCentral_office_address() + "','" + O.getEmail() + "','"
			//		+ O.getWebsite() + "','" + O.getType() + "','" + O.getAdministrative_address() + "','"
			//		+ O.getAdministrative_email() + "','" + O.getAdministrative_phone() + "','"
			//		+ O.getAdministrative_fax() + "','" + O.getPassword() + "','" + O.getLogo() + "','"
			//		+ O.getFristname() + "','" + O.getLastname() + "')";
			String query = "insert into organization(organization_name,central_office_address,email,website,type,administrative_address,administrative_email,administrative_phone,administrative_fax,password,logo,firstname,lastname) values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(O.getOrganization_name());
			smt.setString(O.getCentral_Office_address());
			smt.setString(O.getEmail());
			smt.setString(O.getWebsite());
			smt.setString(O.getType());
			smt.setString(O.getAdministrative_address());
			smt.setString(O.getAdministrative_email());
			smt.setString(O.getAdministrative_phone());
			smt.setString(O.getAdministrative_fax());
			smt.setString(O.getPassword());
			smt.setString(O.getLogo());
			smt.setString(O.getFristname());
			smt.setString(O.getLastname());
			boolean sn = smt.executeUpdate();
			if (sn) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			System.out.println("OrganizationRegistrationSubmit " + e);
			return false;
		}
	}

	public static ResultSet OrganizationLoginCheck(String oid, String pwd) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "select * from organization where organization_id=" + oid + " and password='" + pwd + "'";
			String query = "select * from organization where organization_id = ? and password = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1,oid);
			smt.setString(2,pwd);
			ResultSet rs = smt.executeQuery();
			return rs;
		} catch (Exception e) {
			System.out.println("OrganizationLoginCheck " + e);
			return null;
		}
	}

	public static String getOrganizationEmail(String id) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "select email from organization where organization_id=" + id + "";
			String query = "select email from organization where organization_id=?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1,id);
			ResultSet rs = smt.executeQuery();
			rs.next();
			return rs.getString(1);
		} catch (Exception e) {
			System.out.println("OrganizationLoginCheck " + e);
			return null;
		}
	}

	public static ResultSet OrganizationLogin(String id) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "select * from organization where organization_id=" + id + "";
			String query = "select * from organization where organization_id=?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1,id);
			ResultSet rs = smt.executeQuery();
			return rs;
		} catch (Exception e) {
			System.out.println("OrganizationLoginCheck " + e);
			return null;
		}
	}

	// to update the organization record
	public static boolean OrganizationUpdate(Organization O) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "update organization set organization_name = ? , central_office_address = ? , email=? , website=? , administrative_address=? , administrative_email=? , administrative_phone=? , administrative_fax=? , logo=? , firstname=? , lastname=? where organization_id = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, O.getOrganization_name());
			smt.setString(2, O.getCentral_office_address());
			smt.setString(3, O.getEmail());
			smt.setString(4, O.getWebsite());
			smt.setString(5, O.getAdministrative_address());
			smt.setString(6, O.getAdministrative_email());
			smt.setString(7, O.getAdministrative_phone());
			smt.setString(8, O.getAdministrative_fax());
			smt.setString(9, O.getLogo());
			smt.setString(10, O.getFristname());
			smt.setString(11, O.getLastname());
			smt.setInt(12, Integer.parseInt(O.getOrganization_id()));
			smt.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("OrganizationUpdate " + e);
			return false;
		}
	}

	public static String GetID(Organization O) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select organization_id from organization where organization_name = ? and email = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, O.getOrganization_name());
			smt.setString(2, O.getEmail());
			ResultSet rs = smt.executeQuery();
			if (rs.next()) {
				return rs.getString(1);
			}
			return null;
		} catch (Exception e) {
			System.out.println("GetID " + e);
			return null;
		}
	}

	// To check weather the organization is already present or not
	public static boolean CheckOrganization(String emailid) {
		try {
			String query = "Select " + OrganizatgionInterface.ORGANIZATION_ID + " from organization where "
					+ OrganizatgionInterface.ORGANIZATION_EMAIL + " = ?";
			Connection cn = DBHelper.openConnection();
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, emailid);
			return !smt.execute();
		} catch (Exception e) {
			System.out.println("CheckOrganization " + e);
			return false;
		}
	}

	public static boolean Checkcurrnetpassword(String userid, String curr_password) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select organization_id from organization where organization_id = ? and password = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, userid);
			smt.setString(2, curr_password);

			ResultSet rs = smt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("Checkcurrentpassword " + e);
			return false;
		}
	}

	public static boolean Changepassword(String userid, String password) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "update organization set password = ? where organization_id = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, password);
			smt.setString(2, userid);
			smt.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("Changepassword " + e);
			return false;
		}
	}
}

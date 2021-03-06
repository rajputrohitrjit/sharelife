package Controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.PreparedStatement;
import Model.Certification;
import java.sql.*;

public class CertificationController {
	public static boolean addCertificate(Certification C) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "insert into certificate values(" + C.getOrganization_id() + ",'" + C.getCertificate()+ "')";
			String query = "INSERT INTO certificate VALUES(?,?)";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1,C.getOrganization_id());
			smt.setString(2,C.getCertificate());
			boolean sn = smt.executeUpdate();
			if (sn) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("addCertification " + e);
			return false;
		}
	}

	public static int getorganizationid(String name) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "select organization_id from organization where organization_name = '" + name + "'";
			String query = "SELECT organization_id FROM orgainzation where organization_name = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1,name);
			ResultSet rs = smt.executeQuery();
			rs.next();
			int id = rs.getInt(1);
			return id;
		} catch (Exception e) {
			System.out.println("getorganizationid " + e);
			return 0;
		}
	}

	public static ResultSet GetCertificationByID(String id) {
		try {
			Connection cn = DBHelper.openConnection();
			//String query = "select certificate from certificate where organization_id = " + id + "";
			String query = "select certificate from certificate where organization_id = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1,id);
			ResultSet rs = smt.executeQuery();
			return rs;
		} catch (Exception e) {
			System.out.println("GetCertificationByID " + e);
			return null;
		}

	}

	public static void AddCertificate(Certification C) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "insert into certificate values(?,?)";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setInt(1, Integer.parseInt(C.getOrganization_id()));
			smt.setString(2, C.getCertificate());
			smt.executeUpdate();
		} catch (Exception e) {
			System.out.println("AddCertificate " + e);
		}
	}
}

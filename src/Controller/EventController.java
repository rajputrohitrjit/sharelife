package Controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

import Model.Event;
import Model.EventDetails;
import Model.Organization;

public class EventController {
	public static boolean EventEntry(Event E) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "insert into event (name,date,time,stateid,cityid,address,message,organizationid,coordinator_name,coordinator_phone,coordinator_email) values('"
					+ E.getName() + "','" + E.getDate() + "','" + E.getTime() + "'," + Integer.parseInt(E.getStateid())
					+ "," + Integer.parseInt(E.getCityid()) + ",'" + E.getAddress() + "','" + E.getMessage() + "',"
					+ E.getOrganizationid() + ",'" + E.getCoordinator_name() + "','" + E.getCoordinator_phone() + "','"
					+ E.getCoordinator_emailid() + "')";
			boolean sn = DBHelper.executeUpdate(query, cn);
			if (sn) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("EventEntry " + e);
			return false;
		}
	}

	public static String EmailCreator(Event E, Organization O) {
		try {
			String matter = "";
			String ename = E.getName();
			String date = E.getDate();
			String time = E.getTime();
			String address = E.getAddress();
			String message = E.getMessage();
			String coordinator_name = E.getCoordinator_name();
			String coordinator_phone = E.getCoordinator_phone();
			String coordinator_emailid = E.getCoordinator_emailid();
			String organization = O.getOrganization_name();

			matter = "\t\t" + ename + "\n\n" + "From : " + organization + "\n" + "Date : " + date + "\n" + "Time : "
					+ time + "\n" + "Location : " + address + "\n" + "Coordinator Name : "
					+ coordinator_name.toUpperCase() + "\n" + "Coordinator Phone : " + coordinator_phone + "\n"
					+ "Coordinator Email-id " + coordinator_emailid + "\n" + "\n\n" + message;
			return matter;
		} catch (Exception e) {
			System.out.println("EmailCreator " + e);
			return "error";
		}
	}

	public static ResultSet DonorsDetect(String cityid) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select emailid from user where city=" + cityid;
			ResultSet rs = DBHelper.executeQuery(query, cn);
			return rs;
		} catch (Exception e) {
			System.out.println("DonorsDetect " + e);
			return null;
		}
	}

	public static ResultSet FetchEvents() {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select e.name, e.date, e.time, (select statename from states where stateid = e.stateid) as state, (select cityname from cities where cityid = e.cityid) as city, e.address, o.organization_name, o.logo,e.id from event e, organization o where o.organization_id = e.organizationid";
			ResultSet rs = DBHelper.executeQuery(query, cn);
			return rs;
		} catch (Exception e) {
			return null;
		}
	}

	public static ResultSet EventDetails(String id) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select e.id, e.name, e.date, e.time, (select statename from states where stateid = e.stateid) as state, (select cityname from cities where cityid = e.cityid) as city, e.address, e.message, e.organizationid,(select organization_name from organization where organization_id = e.organizationid) as oname,(select website from organization where organization_id = e.organizationid) as owebsite, e.coordinator_name,e.coordinator_phone,coordinator_email from event e where id=?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, id);
			return smt.executeQuery();
		} catch (Exception e) {
			System.out.println("EventDetails " + e);
			return null;
		}
	}

	public static Organization OrganizationByEvent(EventDetails E) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select organization_name,logo,email,website,firstname,lastname,administrative_email,administrative_phone,administrative_fax from organization where organization_id = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, E.getOID());
			ResultSet rs = smt.executeQuery();
			if (rs.next()) {
				Organization O = new Organization();
				O.setOrganization_name(rs.getString("organization_name"));
				O.setLogo(rs.getString("logo"));
				O.setEmail(rs.getString("email"));
				O.setWebsite(rs.getString("website"));
				O.setFristname(rs.getString("firstname"));
				O.setLastname(rs.getString("lastname"));
				O.setAdministrative_email(rs.getString("administrative_email"));
				O.setAdministrative_phone(rs.getString("administrative_phone"));
				O.setAdministrative_fax(rs.getString("administrative_fax"));
				return O;
			} else {
				return null;
			}
		} catch (Exception e) {
			System.out.println("OrganizationByEvent " + e);
			return null;
		}
	}

	public static ResultSet FetchEvents(String id) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select e.name, e.date, e.time, (select statename from states where stateid = e.stateid) as state, (select cityname from cities where cityid = e.cityid) as city, e.address, o.organization_name, o.logo,e.id from event e, organization o where o.organization_id = e.organizationid and organization_id = "
					+ id + "";
			ResultSet rs = DBHelper.executeQuery(query, cn);
			return rs;
		} catch (Exception e) {
			System.out.println("FetchEvents " + e);
			return null;
		}
	}
}
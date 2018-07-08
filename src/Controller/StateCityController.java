package Controller;

import java.sql.Connection;
import java.sql.ResultSet;

public class StateCityController {
	public static ResultSet getAllStates() {
		try {
			Connection con = DBHelper.openConnection();
			ResultSet rs = DBHelper.executeQuery("select * from states", con);
			return (rs);
		} catch (Exception e) {
			System.out.println("getAllStates " + e);
			return null;
		}
	}

	public static ResultSet getAllCitiesByState(String stateid) {
		try {
			Connection cn = DBHelper.openConnection();
			ResultSet rs;
			rs = DBHelper.executeQuery("select * from cities where stateid=" + stateid, cn);
			return (rs);
		} catch (Exception e) {
			System.out.println("getAllCitiesByState " + e);
			return null;
		}
	}
}

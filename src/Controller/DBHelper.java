package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;

import org.json.JSONObject;

public class DBHelper {
	final static String provider = "com.mysql.jdbc.Driver";
	final static String dsn = "jdbc:mysql://localhost:3306/sharelife";
	final static String user = "root";
	final static String password = "123";

	public static Connection openConnection() {
		try {
			Class.forName(provider).newInstance();
			Connection cn = DriverManager.getConnection(dsn, user, password);
			return (cn);
		} catch (Exception e) {
			System.out.println("openConnection " + e);
		}
		return null;
	}

	public static ResultSet executeQuery(String query, Connection cn) {
		try {
			Statement smt = cn.createStatement();
			ResultSet rs = smt.executeQuery(query);
			return (rs);

		} catch (Exception e) {
			System.out.println("executeQuery " + e);
		}
		return null;
	}

	public static boolean executeUpdate(String query, Connection cn) {
		try {
			Statement smt = cn.createStatement();
			smt.executeUpdate(query);
			return (true);

		} catch (Exception e) {
			System.out.println("executeQuery " + e);
		}
		return false;
	}

	public static ArrayList<JSONObject> jsonengine(ResultSet rs) {
		// making an object to return the list of items in JSON format
		ArrayList<JSONObject> ReturnList = new ArrayList<JSONObject>();

		try {
			ResultSetMetaData meta = rs.getMetaData();
			while (rs.next()) {
				JSONObject obj = new JSONObject();
				for (int i = 1; i <= meta.getColumnCount(); i++) {
					String key = meta.getColumnName(i).toUpperCase();
					String value = rs.getString(i);
					obj.putOpt(key, value);
				}
				ReturnList.add(obj);
			}

		} catch (Exception e) {
			System.out.println("ArrayList<JSONObject> " + e);
			return null;
		} finally {
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return ReturnList;
	}

}

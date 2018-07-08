package Controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Timer;
import java.util.TimerTask;

import com.sun.mail.imap.protocol.MailboxInfo;

import Model.Event;
import Model.Organization;
import Controller.EventController;
import Controller.SendGmail;

public class BackGroundProcess {
	static Timer timer;
	static TimerTask task;

	public static void StartDemon() {
		timer = new Timer();
		task = new ShareLifeDemon();
		timer.schedule(task, 0);
	}

	// demon work in background
	static class ShareLifeDemon extends TimerTask {
		// constructor
		public void run() {
			System.out.println("demon running");

			// fetch the data from system or server
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date date = new Date();
			System.out.println(dateFormat.format(date));

			GregorianCalendar cal = new GregorianCalendar();
			cal.setTime(date);
			// for 1 day
			cal.add(Calendar.DATE, 1);
			System.out.println(dateFormat.format(cal.getTime()).toString());
			EventHandler(dateFormat.format(cal.getTime()).toString().trim());

			// for 7 days
			cal.setTime(date);
			cal.add(Calendar.DATE, 7);
			System.out.println(dateFormat.format(cal.getTime()).toString());
			EventHandler(dateFormat.format(cal.getTime()).toString().trim());

			task = new ShareLifeDemon();
			timer.schedule(task, 1000 * 86400);
		}
	}

	private static void EventHandler(String date) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select * from event where date = '" + date + "'";
			ResultSet rs = DBHelper.executeQuery(query, cn);

			while (rs.next()) {
				// create an object of event
				System.out.println(rs.getString("name"));
				Event E = new Event();
				E.setName(rs.getString("name"));
				E.setDate(rs.getString("date"));
				E.setTime(rs.getString("time"));
				E.setAddress(rs.getString("address"));
				E.setStateid(rs.getString("stateid"));
				E.setCityid(rs.getString("cityid"));
				E.setMessage(rs.getString("message"));

				String fetchOrganzation = "select * from organization where organization_id ="
						+ rs.getString("organizationid") + "";
				ResultSet rs2 = DBHelper.executeQuery(fetchOrganzation, cn);
				if (rs2.next()) {

					// get the details of organization
					Organization O = new Organization();
					O.setOrganization_name(rs2.getString("organization_name"));

					// make the mail
					String matter = EventController.EmailCreator(E, O);

					// fetch the email id of donors
					String fetch = "select emailid from user where city = " + rs.getString("cityid") + "";
					ResultSet rs3 = DBHelper.executeQuery(fetch, cn);
					if (rs3.next()) {
						// send the mail
						SendGmail.mail(matter, rs3);
						System.out.println("mail send");
					}
				}
			}
		} catch (Exception e) {
			System.out.println("EventHandler " + e);
		}
	}

}

package Controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;

public class OTPGeneration {
	public static List<String> list = new ArrayList<String>();
	private Timer timer;
	private String otp;

	public static String GenerateOTP(String key) {
		String number = "0123456789";
		Random ran = new Random();
		char[] otp = new char[6];
		for (int i = 0; i < 6; i++) {
			otp[i] = number.charAt(ran.nextInt(number.length()));
		}

		if (!AddOtp(key + "/" + String.valueOf(otp))) {
			GenerateOTP(key);
		}
		return String.valueOf(otp);
	}

	private static boolean AddOtp(String otp) {
		if (!list.contains(otp)) {
			list.add(otp);
			return true;
		} else {
			return false;
		}
	}

	public static void RemoveOTP(String otp) {
		list.remove(otp);
	}

	public static boolean CheckOTP(String otp) {
		if (list.contains(otp)) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean CheckValidity(String key, String type) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = null;
			if (type.equalsIgnoreCase("user")) {
				query = "select username from user where emailid ='" + key + "'";
			} else if (type.equalsIgnoreCase("organization")) {
				query = "select organization_name from organization where organization_id = '" + key + "' or email = '"
						+ key + "'";
			}
			ResultSet rs = DBHelper.executeQuery(query, cn);
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("CheckValidity " + e);
			return false;
		}
	}

	public void StartCountdown() {
		timer = new Timer();

		timer.schedule(new RemaindTask(this), 120 * 1000);
	}

	class RemaindTask extends TimerTask {

		private OTPGeneration ob;

		public RemaindTask(OTPGeneration ob) {
			this.ob = ob;
		}

		public void run() {
			for (String li : list) {
				System.out.println(li);
			}
			OTPGeneration.RemoveOTP(otp);
			ob = null;

			timer.cancel();
		}
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

}
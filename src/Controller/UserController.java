package Controller;

import java.sql.Connection;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

import Model.User;

interface UserInterface {
	public String USERID = "userid";
	public String USERNAME = "username";
	public String USEREMAIL = "emailid";
	public String USERPASSWORD = "password";
	public String USERDOB = "dob";
	public String USERGENDER = "gender";
	public String USERBLOODGROUP = "bloodgroup";
	public String USERWEIGHT = "weight";
	public String USERODB = "odb";
	public String USERRESIDENCEPHONE = "residencephone";
	public String USERMOBILENO = "mobileno";
	public String USERADDRESS = "address";
	public String USERSTATE = "state";
	public String USERCITY = "city";
}

public class UserController implements UserInterface {
	public static boolean AddNewRecord(User A) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "insert into user(username,emailid,password,dob,gender,bloodgroup,weight,residencephone,mobileno,address,state,city) values('"
					+ A.getUsername() + "','" + A.getEmailid() + "','" + A.getPassword() + "','" + A.getDob() + "','"
					+ A.getGender() + "','" + A.getBloodgroup() + "','" + A.getWeight() + "','" + A.getResidencephone()
					+ "','" + A.getMobileno() + "','" + A.getAddress() + "','" + A.getState() + "','" + A.getCity()
					+ "')";
			boolean st = DBHelper.executeUpdate(query, cn);
			return (st);

		} catch (Exception e) {
			System.out.println("AddNewRecord " + e);
			return false;
		}
	}

	public static ResultSet DisplayAll() {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select a.username,a.emailid,a.gender,a.bloodgroup,a.residencephone,a.mobileno,a.address  from user a";
			ResultSet rs = DBHelper.executeQuery(query, cn);
			return (rs);

		} catch (Exception e) {
			System.out.println("AddNewRecord " + e);
			return null;
		}
	}

	// To check the Username and password
	public static ResultSet CheckPassword(String username, String password) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = " SELECT userid, username, emailid, dob, gender, bloodgroup, weight, residencephone, mobileno, address, state, city FROM USER WHERE emailid = ? AND password= ?";
			;
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, username.trim());
			smt.setString(2, password.trim());
			ResultSet rs = smt.executeQuery();
			return rs;
		} catch (Exception e) {
			System.out.println("CheckPassword");
			return null;
		}
	}

	// to fetch the city along with the number of donors in each city
	public static ResultSet DonarsMeta(String bg, String state, String city) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "";
			PreparedStatement smt = null;
			if (bg.equalsIgnoreCase("any") && state.equalsIgnoreCase("0") && city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid) as total from cities c order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
			} else if (bg.equalsIgnoreCase("any") && state.equalsIgnoreCase("0") && !city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid) as total from cities c where c.cityid = ? order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, city);
			} else if (bg.equalsIgnoreCase("any") && !state.equalsIgnoreCase("0") && city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid) as total from cities c where c.stateid = ? order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, state);
			} else if (bg.equalsIgnoreCase("any") && !state.equalsIgnoreCase("0") && !city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid) as total from cities c where c.cityid = ? and c.stateid = ? order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, city);
				smt.setString(2, state);
			} else if (!bg.equalsIgnoreCase("any") && state.equalsIgnoreCase("0") && city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid and bloodgroup = ?) as total from cities c order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, bg);
			} else if (!bg.equalsIgnoreCase("any") && state.equalsIgnoreCase("0") && !city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid and bloodgroup = ?) as total from cities c where c.cityid = ? order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, bg);
				smt.setString(2, city);
			} else if (!bg.equalsIgnoreCase("any") && !state.equalsIgnoreCase("0") && city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid and bloodgroup = ?) as total from cities c where c.stateid = ? order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, bg);
				smt.setString(2, state);
			} else if (!bg.equalsIgnoreCase("any") && !state.equalsIgnoreCase("0") && !city.equalsIgnoreCase("0")) {
				query = "select c.cityid,c.cityname,(select count(*) from user where city = c.cityid and bloodgroup = ?) as total from cities c where c.cityid = ? and c.stateid =? order by total desc";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, bg);
				smt.setString(2, city);
				smt.setString(3, state);
			}
			return smt.executeQuery();
		} catch (Exception e) {
			System.out.println("DonarsMeta " + e);
			return null;
		}
	}

	public static ResultSet GetDonorsByCity(String city, String bg) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = null;
			PreparedStatement smt = null;
			if (bg.equalsIgnoreCase("any")) {
				query = "select username,gender,bloodgroup,weight,dob from user where city = ?";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, city);
			} else {
				query = "select username,gender,bloodgroup,weight,dob from user where city = ? and bloodgroup = ?";
				smt = (PreparedStatement) cn.prepareStatement(query);
				smt.setString(1, city);
				smt.setString(2, bg);
			}
			return smt.executeQuery();
		} catch (Exception e) {
			System.out.println("GetDonorsByCity " + e);
			return null;
		}
	}

	public static boolean CheckUser(String emailid) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "Select " + UserInterface.USERID + " from user where " + UserInterface.USEREMAIL + " = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, emailid);
			ResultSet rs = smt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("CheckUser " + e);
			return false;
		}
	}

	public static boolean UpdateRecord(User A) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "update user set " + UserInterface.USERNAME + " = ?, " + UserInterface.USEREMAIL + " = ?, "
					+ UserInterface.USERDOB + " = ?, " + " " + UserInterface.USERGENDER + " = ?, "
					+ UserInterface.USERBLOODGROUP + " = ?, " + UserInterface.USERWEIGHT + " = ?," + " "
					+ UserInterface.USERRESIDENCEPHONE + " = ?, " + UserInterface.USERMOBILENO + " = ?, "
					+ UserInterface.USERADDRESS + " = ?" + ", " + UserInterface.USERSTATE + " = ?, "
					+ UserInterface.USERCITY + " = ? where " + UserInterface.USERID + " = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, A.getUsername());
			smt.setString(2, A.getEmailid());
			smt.setString(3, A.getDob());
			smt.setString(4, A.getGender());
			smt.setString(5, A.getBloodgroup());
			smt.setString(6, A.getWeight());
			smt.setString(7, A.getResidencephone());
			smt.setString(8, A.getMobileno());
			smt.setString(9, A.getAddress());
			smt.setString(10, A.getState());
			smt.setString(11, A.getCity());
			smt.setString(12, A.getUserid());
			smt.executeUpdate();
			return true;
		} catch (Exception e) {
			System.out.println("AddNewRecord " + e);
			return false;
		}
	}

	public static ResultSet UserLoginOTP(String userid) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select * from user where " + UserInterface.USEREMAIL + " = ?";
			PreparedStatement smt = (PreparedStatement) cn.prepareStatement(query);
			smt.setString(1, userid);
			return smt.executeQuery();
		} catch (Exception e) {
			System.out.println("UserLoginOTP " + e);
			return null;
		}
	}

	public static boolean Checkcurrnetpassword(String userid, String curr_password) {
		try {
			Connection cn = DBHelper.openConnection();
			String query = "select user from user where emailid = ? and password = ?";
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
			String query = "update user set password = ? where emailid = ?";
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
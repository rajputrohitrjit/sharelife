package Controller;

import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendGmail {

	public static void mail(String matter, ResultSet rs) {
		final String username = "xyx@gmail.com"; // replace this by the Email ID
		final String password = "xyx_password";	// replace this by the password
		
		// {change the setting of Emaild ID to allow less secure app to send Emails}
		
		Properties props = new Properties();
		// properties 
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		// port to send request
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));

			try {
				do {
					// ---------------------------------------- add multiple
					// recipient for the
					// message-----------------------------------------------
					message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(rs.getString("emailid")));
				} while (rs.next());
			} catch (Exception e) {
				System.out.println(e);
			}

			message.setSubject("Sharelife");
			message.setText(matter);

			Transport.send(message);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

	public static void OTPmail(String otp, String to) {
		final String username = "sharelife29@gmail.com";
		final String password = "share@123";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("sharelife29@gmail.com", "share@123");
			}
		});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("sharelife29@gmail.com"));
			message.addRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

			message.setSubject("Sharelife OTP");
			message.setText(otp);

			Transport.send(message);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}

package Controller;

import Controller.DBHelper;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class DataSet {
	public static void main(String args[]) {
		DataSet s = new DataSet();
		s.UpdateEmail();
	}

	public void cityWriter() {
		BufferedReader reader;
		try {
			reader = new BufferedReader(new FileReader("C:/Users/tanmay/Desktop/rootsheet.txt"));
			String line = reader.readLine();
			Connection cn = DBHelper.openConnection();

			List<String> givenList = new ArrayList<String>();

			while (line != null) {
				System.out.println(line);
				givenList.add(line);
				line = reader.readLine();
			}

			int count = 1;
			Random rand = new Random();
			while (count != 501) {
				String element = givenList.get(rand.nextInt(givenList.size()));
				String split[] = element.split(",");
				DBHelper.executeUpdate("update user set state = " + split[1] + ", city = " + split[0]
						+ " where userid = " + count + "", cn);
				count++;
			}

			reader.close();

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void Databasewriter() {
		BufferedReader reader;
		try {
			reader = new BufferedReader(new FileReader("C:/Users/tanmay/Desktop/rootsheet.txt"));
			String line = reader.readLine();
			Connection cn = DBHelper.openConnection();
			int count = 1;
			List<String> givenList = new ArrayList<String>();
			Random rand = new Random();
			while (line != null) {
				System.out.println(line);
				givenList.add(line);
				line = reader.readLine();
			}
			System.out.println("result");
			while (count != 501) {
				System.out.println(givenList.get(count));
				count++;
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public void UpdateEmail() {
		BufferedReader reader;
		try {
			reader = new BufferedReader(new FileReader("C:/Users/tanmay/Desktop/emailids.txt"));
			String line = reader.readLine();
			Connection cn = DBHelper.openConnection();
			int count = 1;
			List<String> givenList = new ArrayList<String>();

			while (line != null) {
				System.out.println(line);
				givenList.add(line);
				line = reader.readLine();
			}
			System.out.println("result");
			while (count < 20) {
				String query = "update event set coordinator_email = '" + givenList.get(count) + "' where id = " + count
						+ "";
				DBHelper.executeUpdate(query, cn);
				count++;
			}
			reader.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

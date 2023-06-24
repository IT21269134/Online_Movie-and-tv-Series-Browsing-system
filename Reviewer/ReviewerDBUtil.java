package com.Reviewer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ReviewerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	
	
	public static boolean validate(String username , String password) {
		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from insert_reviewer where username='" + username + "' and password='" + password
				+ "'";
		rs = stmt.executeQuery(sql);
		
		
		if(rs.next()) {
			isSuccess = true;
		}else {
			isSuccess = false;
		}
		
		
		}	catch (Exception e) {
			e.printStackTrace();
		}

		
		
		
		
		return isSuccess;
	}

	public static List<Reviewer> getReviewer(String userName, String password) {

		ArrayList<Reviewer> rev = new ArrayList<>();

		// validate connection

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from insert_reviewer where username='" + userName + "' and password='" + password
					+ "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String qualification = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);

				Reviewer c = new Reviewer(id, name, email, phone, qualification, userU, passU);
				rev.add(c);

			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return rev;

	}

	// insert Data
	public static boolean insertReviewer(String name, String email, String phone, String qualification, String username,
			String password) {
		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "insert into insert_reviewer values (0,'" + name + "','" + email + "','" + phone + "','"
					+ qualification + "','" + username + "','" + password + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// update details
	public static boolean updateReviewer(String id, String name, String email, String phone, String qualification,
			String username, String password) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update insert_reviewer set name='" + name + "',email='" + email + "',phone='" + phone
					+ "',qualification='" + qualification + "',username='" + username + "',password='" + password + "'"
					+ "where Reviewer_id='" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	// Get DETAILS
	public static List<Reviewer> getReviewerDetails(String Id) {

		int convertedID = Integer.parseInt(Id);

		ArrayList<Reviewer> rev = new ArrayList<>();

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from insert_reviewer where Reviewer_id='" + convertedID + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String qualification = rs.getString(5);
				String username = rs.getString(6);
				String password = rs.getString(7);

				Reviewer c = new Reviewer(id, name, email, phone, qualification, username, password);
				rev.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return rev;

	}

//delete
	public static boolean deleteReviewer(String id) {

		int convId = Integer.parseInt(id);

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from insert_reviewer where Reviewer_id='" + convId + "'";
			int r = stmt.executeUpdate(sql);

			if (r > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}

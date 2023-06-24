package com.admin;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class adminDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String userName, String password){
		
//		ArrayList<Admin> admin = new ArrayList<>();
		
		//validate
		try {
			
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from system_db.admin where username='"+userName+"' and password='"+password+"'";
			 
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				isSuccess = true;
//				int id = rs.getInt(1);
//				String name = rs.getString(2);
//				String email = rs.getString(3);
//				String phone = rs.getString(4);
//				String userU = rs.getString(5);
//				String passU = rs.getString(6);
//				String profileImg = rs.getString(7);
//				
//				
//				Admin ad = new Admin(id, name, email, phone, userU, passU, profileImg);
//				admin.add(ad);
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
//		return admin;
		return isSuccess;
	}
	
	
	public static List<Admin> getAdminForLogin(String Username){
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
		
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from system_db.admin where username='"+Username+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String profileImg = rs.getString(7);
				
				Admin c = new Admin(id, name, email, phone, userU, passU, profileImg);
				admin.add(c); // passing objects to arraylist
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return admin;

	}
	
	
	public static boolean registerAdmin(String name, String email, String phone, String username, String password, String profImg) {
		
		boolean isSuccess = false;
		
		try {
			//DB connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into system_db.admin values(0, '"+name+"','"+email+"', '"+phone+"', '"+username+"', '"+password+"','"+profImg+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			//checking if data inserted successfully
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static boolean updateAdmin(String id, String name, String email, String phone, String username, String password, String profileImg) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update system_db.admin set name = '"+name+"', email = '"+email+"', phone = '"+phone+"', username = '"+username+"', password = '"+password+"', profileImg = '"+profileImg+"'"
					+ "where adminID = '"+id+"'";
			
			//returns 2 values as 0 and 1
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	public static List<Admin> getAdminDetails(String Id){
		
		int convId = Integer.parseInt(Id);
		
		ArrayList<Admin> admin = new ArrayList<>();
		
		try {
		
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from system_db.admin where adminID='"+convId+"'";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				String profileImg = rs.getString(7);
				
				Admin c = new Admin(id, name, email, phone, userU, passU, profileImg);
				admin.add(c); // passing objects to arraylist
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return admin;

	}
	
	
	public static boolean deleteAdmin(String Id) {
		 
		System.out.println("Id1:" +Id);
		int convertId = Integer.parseInt(Id);
		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();;
			String sql = "delete from system_db.admin where adminID='"+convertId+"'";
			int r = stmt.executeUpdate(sql);
			
			if(r > 0) {
				
				isSuccess = true;
				System.out.println("Success");
			}
			else {
				
				isSuccess = false;
				System.out.println("unSuccess");
			}
			
		}
		catch(Exception e) {
			
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}

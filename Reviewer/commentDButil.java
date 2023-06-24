package com.Reviewer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;





public class commentDButil {

	
	private static boolean issuccses;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insert(String id,String name,String description)
	{
		boolean isSuccses=false;
		
	
		
		try {
    		con = DBconnectUser.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into comment values(0,'"+name+"','"+description+"')";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccses = true;
    		} else {
    			isSuccses = false;
    		}
    		 
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
 	
    	return isSuccses;
    }
}
package com.review;
import com.User.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.User.DBconnectUser;



public class ReviewerDButil {

	
	private static boolean issuccses;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean insert(String id,String name,String description)
	{
		boolean isSuccses=false;
		
	
		
		try {
    		con = DBconnectUser.getconnection();
    		stmt = con.createStatement();
    	    String sql = "insert into review values(0,'"+name+"','"+description+"')";
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
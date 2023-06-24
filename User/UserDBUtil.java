package com.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDBUtil {
	
	private static boolean issuccses;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public static boolean validate(String username ,String password)
	{
		try
		{
		  con = DBconnectUser.getconnection();
			
			stmt = con.createStatement();
			 
			String sql = "select * from user where name='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			
			
			//true if the current row is valid
			if(rs.next())
			{
				issuccses=true;
			}
			else
			{
				issuccses=false;
			}
			
		}
		
		
		catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return issuccses;
	}
	
	//for return values as list
	public static List <User> getCustomer(String userName) 
	{
		ArrayList<User> user=new ArrayList<>();
			
		try
		{
			con=DBconnectUser.getconnection();
			stmt=con.createStatement();
			String sql = "select * from user where name='"+userName+"'";
			rs=stmt.executeQuery(sql);
			
			//while boolean value is true get data from table
			while(rs.next()) 
			{

              int id=rs.getInt(1);
              String name=rs.getString(2);
              String email = rs.getString(3);
			  String phone = rs.getString(4);
			  String password = rs.getString(5);
			  String img = rs.getString(6);
			  
			  
				
			  User us=new User(id,name,email,phone,password,img);
			  
			  user.add(us);
			  
			}
			
		}
		
		
		catch(Exception e)
		{
			e.printStackTrace(); 
		}
		return user;
		
		
	}
	
	public static boolean updateuser(String id, String name, String email, String phone, String password)
	{
		
		
    try {
    		

    		con = DBconnectUser.getconnection();
    		stmt = con.createStatement();
    		 
    		
    	
    		String sqlg = "update user set name='"+name+"',email='"+email+"',phone='"+phone+"',password='"+password+"' where id='"+id+"'";
    		
    		
    		
    		int rss = stmt.executeUpdate(sqlg);
    		
    		if(rss > 0)
    		{
    			issuccses = true;
    		}
    		else
    		{
    			issuccses = false; 
    		}
    		
    	 }
    	 catch(SQLException e) 
          {
    		e.printStackTrace();
    	  }

     return issuccses;
		
	}
	

	public static boolean insertUser(String name,String email,String phone,String password,String img)
	{
		boolean isSuccses=false;
		
	
		
		try {
    		con = DBconnectUser.getconnection();
    		stmt = con.createStatement();
    	    String sql = "insert into user values(0,'"+name+"','"+email+"','"+phone+"','"+password+"','"+img+"')";
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
	
	
	public static boolean deleteUser(String id)
	{
		//convert to integer
		int usId=Integer.parseInt(id);
		
try {
    		
    		con = DBconnectUser.getconnection();
    		stmt = con.createStatement();
    		String sql = "delete from user where id='"+usId+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			issuccses = true;
    		}
    		else {
    			issuccses = false;
    		}
    		
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
		
		return issuccses;
	}
	
	

}

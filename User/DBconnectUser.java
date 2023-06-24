 package com.User;
import java.sql.Connection;
import java.sql.DriverManager;




//database connection interface
public class DBconnectUser 
{
	
	private static String url="jdbc:mysql://localhost:3306/system_db";
	private static String userName="root";
	private static String password="0767";
	private static  Connection con;
	
	public static Connection getconnection()
	{
		//handle Exception 
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,userName,password);
			
		}
		catch(Exception e)
		{
			System.out.println("Database conncetion is not success");
		}
		
		return con;
	}
	

}

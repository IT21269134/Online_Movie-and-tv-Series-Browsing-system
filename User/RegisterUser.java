package com.User;


import java.io.FileOutputStream;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");
		
		 Part file=request.getPart("img"); 
		 String imageFileName=file.getSubmittedFileName();
		 System.out.println(imageFileName);
		 String uploadPath="C:/Users/Nileesha/Desktop/Admin/Project Web/src/main/webapp/images/userimg/"+imageFileName;
		 System.out.println(uploadPath);
		 
		 try
			{
			
			FileOutputStream fos=new FileOutputStream(uploadPath);
			InputStream is=file.getInputStream();
			
			byte[] data=new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
			
			}
			
			catch(Exception e)
			{
				e.printStackTrace();
			}
	
		
		
		
		boolean isTrue;
		isTrue=UserDBUtil.insertUser(name, email, phone, password, imageFileName);
		
		if(isTrue==true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("loginU.jsp");
			dis.forward(request, response);
		}
		else
		{
	       System.out.println("unsucces");
		}
		
	}

}

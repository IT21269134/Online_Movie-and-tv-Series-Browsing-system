package com.User;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateuserServlet")
public class UpdateuserServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

	
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("mobile");
		String password = request.getParameter("password");
		
		  
		
		boolean isTrue;
		
		isTrue=UserDBUtil.updateuser(id,name, email, phone, password);
		
		if(isTrue==true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("Succses.jsp");
			dis.forward(request, response);
		}
		else
		{
	       System.out.println("unsuccess");
		}
		
		
	}

}

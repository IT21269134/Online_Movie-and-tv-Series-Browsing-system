package com.User;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//delete UserServlet

@WebServlet("/DeleteUser")
public class DeleteUser extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	
	//do post method for always includes a specific HTTP Method
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		//catch parameter id
		String id = request.getParameter("id");
		boolean isTrue;
		
		
		//return value catch
		isTrue=UserDBUtil.deleteUser(id);
		
		
		//when true Dispatch to registration page
		if (isTrue == true) 
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("register.jsp");
			dispatcher.forward(request, response);
		}
		
		
		//else stay in Delete account page
		else 
		{
			
			List <User> userobj = UserDBUtil.getCustomer(id);
			request.setAttribute("userDetails", userobj);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}

}

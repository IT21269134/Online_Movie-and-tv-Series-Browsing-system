package com.User;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet 
{
	
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		String userName=request.getParameter("username");
		String password=request.getParameter("password");
		
		boolean isTrue;
		
		isTrue=UserDBUtil.validate(userName,password);
		
		
		   //when login details are true
			if(isTrue ==true)
			{
				
				List<User> usdet = UserDBUtil .getCustomer(userName);
				request.setAttribute("usdet", usdet);
				
				RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
				dis.forward(request, response);
				
			}
			
			//wrong validations direct to login page
			else
			{
				out.println("<script type='text/javascript'>");
				out.println("alert('Your username or password is incorrect');");
				out.println("location='loginU.jsp'");
				out.println("</script>");
				
			}
	}

}

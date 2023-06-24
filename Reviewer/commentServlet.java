package com.Reviewer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/commentServlet")
public class commentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String description=request.getParameter("description");
		
		boolean isTrue;
		isTrue=commentDButil.insert(id,name,description);
		
		if(isTrue==true)
		{
			RequestDispatcher dis=request.getRequestDispatcher("comment.jsp");
			dis.forward(request, response);
		}
		else
		{
	       System.out.println("unsucces");
		}
	}

}

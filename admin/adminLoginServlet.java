package com.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLoginServlet")
public class adminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pw");
		
		boolean isTrue; 
		
		isTrue = adminDBUtil.validate(username, password);
		
		if(isTrue == true) {
			
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			
			List<Admin> adminDetails = adminDBUtil.getAdminForLogin(username);
			request.setAttribute("adminDetails", adminDetails);

			//Servlet to navigation page
			RequestDispatcher dis = request.getRequestDispatcher("adminAccount.jsp");
			dis.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect!!');");
			out.println("location='adminLogin.jsp'");
			out.println("</script>");
		}
		
//		try {
//			List<Admin> adminDetails = adminDBUtil.validate(username, password);
//			request.setAttribute("adminDetails", adminDetails);
//		}
//		catch(Exception e) {
//			e.printStackTrace();
//		}
		
		//Servlet to navigation page
//		RequestDispatcher dis = request.getRequestDispatcher("adminAccount.jsp");
//		dis.forward(request, response); 
	}

}

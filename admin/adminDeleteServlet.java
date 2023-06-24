package com.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/adminDeleteServlet")
public class adminDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String id = request.getParameter("adId");
		boolean isTrue;
		
		System.out.println("Id2:" +id);
		isTrue = adminDBUtil.deleteAdmin(id);
		
		if(isTrue == true) {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminRegister.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Admin> adminDetails = adminDBUtil.getAdminDetails(id);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("adminAccount.jsp");
			dispatcher.forward(request, response);
		}
	}

}

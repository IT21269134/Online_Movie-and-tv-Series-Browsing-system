package com.Reviewer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reviewer_insert")
public class Reviewer_insert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String qualficaton = request.getParameter("qualification");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");

		boolean isTrue;

		isTrue = ReviewerDBUtil.insertReviewer(name, email, phone, qualficaton, username, password);

		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("Reviewer_Reg_Success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Reviewer_Reg_Unsucccess.jsp");
			dis2.forward(request, response);
		}
	}

}

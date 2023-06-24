package com.Reviewer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reviewer_Update_Servlet")
public class Reviewer_Update_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String qualification = request.getParameter("qualification");
		String username = request.getParameter("uid");
		String password = request.getParameter("pwd");

		boolean isTrue;

		isTrue = ReviewerDBUtil.updateReviewer(id, name, email, phone, qualification, username, password);

		if (isTrue == true) {
			List<Reviewer> ReviewerDetails = ReviewerDBUtil.getReviewerDetails(id);
			request.setAttribute("ReviewerDetails", ReviewerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Reviewer_Dash.jsp");
			dis.forward(request, response);
		} else {

			List<Reviewer> ReviewerDetails = ReviewerDBUtil.getReviewerDetails(id);
			request.setAttribute("ReviewerDetails", ReviewerDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("Reviewer_Dash.jsp");
			dis2.forward(request, response);
		}
	}

}

package com.Reviewer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Reviewer_Delete_Servelet")
public class Reviewer_Delete_Servelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = ReviewerDBUtil.deleteReviewer(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Reviewer_Login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Reviewer> cusDetails = ReviewerDBUtil.getReviewerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("Reviewer_Dash.jsp");
			dispatcher.forward(request, response);
		}
	}

}

package com.Reviewer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Reviewer.Reviewer;
import com.Reviewer.ReviewerDBUtil;

@WebServlet("/Reviewer_Login_Servlet")
public class Reviewer_Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		String userName = request.getParameter("uid");
		String password = request.getParameter("pass");
		boolean isTrue;

		isTrue = ReviewerDBUtil.validate(userName, password);

		if (isTrue == true) {
			List<Reviewer> ReviewerDetails = ReviewerDBUtil.getReviewer(userName, password);
			request.setAttribute("ReviewerDetails", ReviewerDetails);
			RequestDispatcher dis = request.getRequestDispatcher("Reviewer_Dash.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert('Your User Name OR Password is Incorrect !');");
			out.println("location = 'Reviewer_Login.jsp'");
			out.println("</script>");
		}

		try {

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

package com.Agent;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteAgentServlet")
public class DeleteAgentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("Agtid");
		boolean isTrue;
		
		isTrue = AgentDBUtil.deleteAgent(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("Agentinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Agent> AgtDetails = AgentDBUtil.getAgentDetails(id);
			request.setAttribute("AgtDetails", AgtDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}

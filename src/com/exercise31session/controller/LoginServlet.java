package com.exercise31session.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html charset='utf-8'");
		PrintWriter output = response.getWriter();
		
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		
		
		if(username.equals("admin") && password.equals("admin"))
		{			
			HttpSession mySession = request.getSession();
			mySession.setAttribute("user", username);
			mySession.setAttribute("pass", password);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			output.println("User or password are wrong!");
		}
		
		
		output.close();
	}

}

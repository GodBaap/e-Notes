package com.Servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/LogoutServlet")

public class LogoutServlet extends HttpServlet{
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		try {
			HttpSession session = request.getSession();
			session.removeAttribute("userD");
			
			HttpSession session1 = request.getSession();
			session.setAttribute("logoutMsg", "Logout Successful. . .");
			response.sendRedirect("login.jsp");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	

}

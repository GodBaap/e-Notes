package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import com.DAO.UserDAO;
import com.Db.DBConnect;
import com.User.UserDetails;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String name = req.getParameter("fname");
		String email = req.getParameter("mail");
		String password = req.getParameter("password");
		UserDetails us = new UserDetails();
		us.setName(name);
		us.setEmail(email);
		us.setPassword(password);
		
		UserDAO dao = new UserDAO(DBConnect.getConn());
		boolean f=dao.addUser(us);
		PrintWriter out = resp.getWriter();
		
		if(f)
		{
			HttpSession session = req.getSession();
			session.setAttribute("reg-success", "Registration Successful");
			resp.sendRedirect("register.jsp");
			
		}else{
			HttpSession session = req.getSession();
			session.setAttribute("failed-msg", "Something went wrong . . .");
			resp.sendRedirect("register.jsp");
		}
		
		
		
		
		
	}


		
	}
	
	
	



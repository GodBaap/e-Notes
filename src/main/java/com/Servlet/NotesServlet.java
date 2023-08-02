package com.Servlet;

import java.io.IOException;

import com.DAO.NotesDAO;
import com.Db.DBConnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/NotesServlet")
public class NotesServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		int uid=Integer.parseInt(request.getParameter("uid"));
		String title =request.getParameter("title");
		String content=request.getParameter("content");
		NotesDAO dao = new NotesDAO(DBConnect.getConn());	
		boolean f=dao.AddNotes(title, content, uid);
		
		if(f)
		{
			
			System.out.println("Data inserted");
			response.sendRedirect("showNotes.jsp");
		}
		else
		{
			System.out.println("Data not inserted");
		}
	}

}

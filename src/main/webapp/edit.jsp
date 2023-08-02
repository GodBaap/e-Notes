<%@page import="com.Db.DBConnect"%>>
<%@page import="com.User.Post"%>>
<%@page import="com.DAO.NotesDAO"%>>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	//Retrieving object userD 
	//UserDetails usr = (UserDetails)session.getAttribute("userD");
	//if(usr==null)//no data found in usr object means that user is not registered or has not logged in
	//{
		//response.sendRedirect("login.jsp");
		//session.setAttribute("Login Error", "Please Login. . .");
	//}
	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Notes</title>
<%@include file="allLinks/allCSS.jsp"%>
</head>

<body>
	<%@include file="allLinks/navbar.jsp"%>
	<%
	Integer note = Integer.parseInt(request.getParameter("note_id"));
	PostDAO post = new PostDAO(DBConnect.getConn());
	Post p = post.getDataById(noteid);
	%>

	<h1 class="text-center">Edit your notes</h1>



	<div class="container">
		<!-- for Editing the data in the database, we are going to create a hidden form field-->
		<input type="hidden" value="<%=note%>"
			<div class="row">
			<div class="col-md-12">
				<form action="NotesServlet" method="post">
				
			
				
				
					<div class="form-group">


						<label for="exampleInputEmail1">Enter Title</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="" name="title"
							required="required" value="<%=p.getTitle()%>">
					</div>
			<div class="form-group">
						<label for="exampleInputEmail1">Enter Content</label>
						<textarea rows="8" cols="" class="form-control" name="content"
							required="required"><value="<%=p.getContent() %>"></textarea>
					</div>
			<button type="submit" class="btn btn-primary">Save</button>
		</form>


	</div>
	</div>
	</div>


</body>
</html>
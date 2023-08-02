<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!--Retrieving object userD -->
	<%
	UserDetails usr1 = (UserDetails)session.getAttribute("userD");
	if(usr1==null)//no data found in usr object means that user is not registered or has not logged in
	{
		response.sendRedirect("login.jsp");
		session.setAttribute("Login Error", "Please Login. . .");
	}
	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allLinks/allCSS.jsp" %>
</head>
<body>
<%@include file="allLinks/navbar.jsp" %>

<div class="container-fluid p.0">
<div class="card mt-3 py-5">
<div class="card-body text-center">
<h1>Start taking your notes here</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start here</a></body>
</div>
</div>

</div>
</html>
<%@page import = "com.Db.*"%> 
<%@page import = "java.sql.*"%> 
<%@page import="jakarta.servlet.* "%>
<%@page import="jakarta.servlet.http.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

</style>
<meta charset="ISO-8859-1">
<title>Homepage</title>
<%@include file="allLinks/allCSS.jsp" %>
</head>

<body>
<%@include file="allLinks/navbar.jsp" %>
<%
Connection conn = DBConnect.getConn();
System.out.print(conn);

%>

<div class="container-fluid back-img">
<div class="text-center">
<h5>Welcome to NoteMaker, a powerful Java-based notes-making application designed to help you stay
 organized and efficient in managing your personal and professional tasks. With a user-friendly 
 interface and robust features, our application provides an intuitive way to create, organize, 
 and access your notes whenever and wherever you need them.</h5>

<a href="login.jsp" target="" class="btn btn-light">Login</a>
<a href="register.jsp" target="" class="btn btn-light">Register</a>

</div>
</div>




</body>
</html>
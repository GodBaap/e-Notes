<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%
	//Retrieving object userD -->
	UserDetails usr = (UserDetails)session.getAttribute("userD");
	if(usr==null)//no data found in usr object means that user is not registered or has not logged in
	{
		response.sendRedirect("login.jsp");
		session.setAttribute("Login Error", "Please Login. . .");
	}
	 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="allLinks/allCSS.jsp"%>
</head>
<body>
	<%@include file="allLinks/navbar.jsp"%>
	<h1 class="text-center">Add your notes</h1>
	<div class="container">
	<div class="row">
		<div class="col-md-12">
			<form action="NotesServlet" method="post">
				<div class="form-group">
				
				<!-- the name of the current user displays in the add notes page -->
				<!-- for this purpose we create the sessions -->
				<%
				UserDetails us =(UserDetails)session.getAttribute("userD");
						if(us!=null)
						{%>
						 <input type="hidden" value="<%=us.getId()%>" name="uid">
							
						<%}
				%>
				
					<label for="exampleInputEmail1">Enter Title</label> <input
						type="text" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" placeholder="" name="title" required="required">
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1">Enter Content</label>
						<textarea rows="8" cols="" class="form-control" name ="content" required="required"></textarea>
				</div>

				<button type="submit" class="btn btn-primary">Save</button>
			</form>


		</div>
	</div>
	</div>

</body>
</html>
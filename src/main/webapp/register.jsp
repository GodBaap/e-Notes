<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Registration Page</title>
<%@include file="allLinks/allCSS.jsp"%>
</head>
<body>
	<%@include file="allLinks/navbar.jsp"%>
	<div class="contianer-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<h2>New User Registration</h2>
					</div>

					<% String regMsg=(String)session.getAttribute("reg-success");
					if(regMsg!=null){
					%>
					<div class="alert alert-success" role="alert"><%=regMsg%><a href="login.jsp">Click Here to login</a></div>
					<%
					session.removeAttribute("reg-success");
					}
					%>
					
					<% String failedMsg=(String)session.getAttribute("failed-msg");
					if(failedMsg!=null){
					%>
					<div class="alert alert-danger" role="alert"><%=failedMsg%></div>
					<%
					session.removeAttribute("failed-msg");
					}
					%>
					<div class="card-body">

						<form action="UserServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter name</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="" name="fname">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="" name="mail">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="" name="password">
							</div>

							<button type="submit" class="btn btn-primary btn-block">Register</button>
						</form>
					</div>

				</div>

			</div>
		</div>

	</div>



</body>
</html>
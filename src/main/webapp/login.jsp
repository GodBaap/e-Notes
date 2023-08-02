<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="allLinks/allCSS.jsp"%>
</head>
<body>
	<%@include file="allLinks/navbar.jsp"%>
	<div class="contianer-fluid">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<h2>User Login</h2>
					</div>



					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%=invalidMsg%></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>

					<%
					String withoutLogin=(String)session.getAttribute("Login Error");
					if(withoutLogin!=null)
					{%>
					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>

					<%
					session.removeAttribute("Login Error");
					}
					%>

					<%
					String logoutMsg=(String)session.getAttribute("logoutMsg");
					if(logoutMsg!=null)
					{%>

					<div class="alert alert-danger" role="alert"><%=logoutMsg%></div>

					<%
					session.removeAttribute("logoutMsg");
					}
					
					%>




					<div class="card-body">

						<form action="LoginServlet" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="" name="uemail">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Enter password</label> <input
									type="password" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="" name="upassword">
							</div>


							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
					</div>

				</div>

			</div>
		</div>

	</div>



</body>
</html>
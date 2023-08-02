
<%@page import="com.User.UserDetails"%>
<nav
	class="navbar navbar-expand-lg navbar-light bg-custom navbar-custom">
	<a class="navbar-brand" href="#">Notemaker</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="index.jsp"
				target="_blank">Home <span class="sr-only">(current)</span></a></li>
			<li class="nav-item"><a class="nav-link" href="addNotes.jsp">Add Notes</a>
			</li>

			<li class="nav-item"><a class="nav-link" href="showNotes.jsp">Show Notes</a>
			</li>
		</ul>
		<%
		UserDetails user = (UserDetails) session.getAttribute("userD");
		if (user != null) {
		%>
		<a href="" target=""
			class="btn btn-outline-success my-2 my-sm-0 mr-2" data-toggle="modal"
			data-target="#exampleModal" type="submit"><%=user.getName()%></a> 
			
			<!-- Making the log out part -->
			<a href="LogoutServlet" target=""
			class="btn btn-outline-success my-2 my-sm-0" type="submit">Logout</a>
			
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel"></h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="container text-center">
							<h5>User Profile</h5>
							<table class="table">
								<tbody>
									<tr>
										<th>User Id</th>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<th>Full Name</th>
										<td><%=user.getName()%></td>
									</tr>
									<th>Email Id</th>
									<td><%=user.getEmail()%></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Close</button>
					
					</div>
				</div>
			</div>
		</div>

	</div>

	<%
	} else {
	%>

	<a href="login.jsp" target=""
		class="btn btn-outline-success my-2 my-sm-0 mr-2" type="submit">Login</a>
	<a href="register.jsp" target=""
		class="btn btn-outline-success my-2 my-sm-0" type="submit">Register</a>
	<%
	}
	%>




	</div>

	</div>
	</div>
	</div>
</nav>


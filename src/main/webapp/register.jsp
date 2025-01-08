<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background-image: linear-gradient(to right top, #90caf9, #b7d5fc, #d6e1fd, #eeeffe,
		#ffffff);
	height: 500px;
	width: 50%;
	height: 90vh;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Register</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center bg-custom ">
						<i style="color: white" class="fa fa-user-plus" aria-hidden="true"></i>
						<h4 style="color: white">Registration</h4>
					</div>
					<%
						String regMsg =(String)session.getAttribute("reg-success");
						if(regMsg!= null)
						{
					%>
					<div class="alert alert-success" role="alert"><%=regMsg %>Login<a href="login.jsp">Click Here</a></div>
					<%
						session.removeAttribute("reg-success");
						}
					%>
					<%
						String FailedMsg =(String)session.getAttribute("failed-msg");
						if(FailedMsg!= null)
						{
					%>
					<div class="alert alert-danger" role="alert"><%=FailedMsg %></div>
					<%
						session.removeAttribute("failed-msg");
						}
					%>


					<div class="card-body">
						<form action="UserServlet" method="post">

							<div class="form-group">
								<label>Enter Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="fname">
							</div>

							<label>Enter Email</label>
							<div class="form-group">
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">

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
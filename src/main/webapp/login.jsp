<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
	.back-img{
	background-image: linear-gradient(to right top, #90caf9, #b7d5fc, #d6e1fd, #eeeffe, #ffffff);
	height:500px;
	width: 50%;
	height:90vh;
	background-repeat:no-repeat;
	background-size:cover;
	}
	</style>
<meta charset="UTF-8">
<title>Login Page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<%@include file="all_component/Navbar.jsp"%>
	<div class="container-fluid  back-img">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center bg-custom ">
						<i style="color: white" class="fa fa-user-plus" aria-hidden="true"></i>
						<h4 style="color: white">Login Page</h4>
					</div>
					
					<%
						String invalidmsg=(String)session.getAttribute("login-failed");
						if(invalidmsg!=null){
					%>
					<div class="alert alert-danger" role="alert"><%= invalidmsg %></div>
					<%session.removeAttribute("login-failed");} %>
					
					
					<%
					String withoutLogin = (String)session.getAttribute("login-error");
					if(withoutLogin!=null)
					{%>
						<div class="alert alert-danger" role="alert"><%= withoutLogin%></div>
					<%
					session.removeAttribute("login-error");
					}
					%>
					
					
					<%
					String lgMsg = (String)session.getAttribute("logoutMsg");
					if(lgMsg!=null)
					{%>
						<div class="alert alert-success" role="alert"><%= lgMsg%></div>
					
					<%
					session.removeAttribute("logoutMsg");
					}
					%>
					
					
					<div class="card-body"><form action="loginServlet" method="post">
					<div class="form-group">
							<label>Enter Email</label>
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1" name="upassword">
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
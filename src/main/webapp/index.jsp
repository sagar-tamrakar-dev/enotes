<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
	.back-img{
	background:url("img/b1.webp");
	width: 50%;
	height:90vh;
	background-repeat:no-repeat;
	background-size:cover;
	}
	</style>
	<meta charset="UTF-8">
	<title>Home Page</title>
	<%@include file="all_component/allcss.jsp" %>
</head>
<body>

	<%@include file="all_component/Navbar.jsp"%>
	
	<%
	Connection conn=DBConnect.getConn();
	System.out.println(conn);
	%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 style=color:white;><i class="fa fa-book" aria-hidden="true"></i>E notes Save Your Notes Here...!!!</h1>
			<a href="login.jsp" class="btn btn-light"><i class="fa fa-user-circle-o" aria-hidden="true"></i>Login</a>
			<a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i>Register</a>
		</div>

	</div> 
	
	
	<%@include file="all_component/footer.jsp" %>
</body>
</html>
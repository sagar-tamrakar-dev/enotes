<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
		UserDetails user1 = (UserDetails)session.getAttribute("userD");
		if(user1==null)
		{
			response.sendRedirect("login.jsp");
			session.setAttribute("login-error","please login first");
		}
		
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enotes</title>
<%@include file="all_component/allcss.jsp" %>
</head>
<body>


<div class="container-fluid p-0">
<%@include file="all_component/Navbar.jsp" %>
<div class="card py-5">
<div class="card-body text-center">
<img alt="" src="img/p2.jpeg" class="img-fluid mx-auto" style="max-width:700px;" >
<h1>Start Taking Your Notes</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start Here</a>
</div>
</div>
</div>
<%@include file="all_component/footer.jsp" %>
</body>
</html>
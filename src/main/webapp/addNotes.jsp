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
<title>Add Notes</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="all_component/Navbar.jsp"%>
		<h1 class="text-center">Add Your Notes Here</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">
						<div class="form-group">

					 		<% UserDetails us = (UserDetails)session.getAttribute("userD"); 
						if(us!=null){
						%><input type="text" value="<%=us.getId() %>" name="uid">
							<%}
						%>

							<label for="exampleInputEmail1">Enter Title</label> <input
								type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="title" required="required">

						</div>
						<div class="form-group">
							<label for="exampleInputEmail1">Enter Notes</label>
							<textarea rows="12" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-primary">Add Notes</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>
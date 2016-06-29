<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
img {
	border-radius: 50%;
}

li {
	float: left;
}
</style>
<title>Login</title>
</head>
<body>
	

		<nav class="navbar navbar-inverse">
			<div class="container-fluid"></div>
			<b>
				<ul class="nav nav-pills nav-justified">
			<li><a href="<c:url value="/Home"/>">Home</a></li>
			<li><a href="<c:url value="/Fruits"/>">Fruits</a></li>
			<li><a href="<c:url value="/Vegetables"/>">Vegetables</a></li>
			<li><a href="<c:url value="/Contact"/>">Contact Us</a></li>
			<li><a href="<c:url value="/Cart"/>">Cart</a></li>
			<li><a href="<c:url value="/Login"/>">Login</a></li>
			<li><a>Welcome ${sessionScope.username}</a></li>
		</ul>
			</b>
			</div>
		</nav>
	

		<form:form action="isValidUser" method="post">

	
				<h1>Login</h1>
				<p class="col-xs-4">
					<label for="username">USERNAME:</label> <input type="text"
						class="form-control" name="name" required=""> <label
						for="password">PASSWORD:</label> <input type="password"
						class="form-control" name="password" required=""> <br>
					<button type="submit" class="btn btn-success">Login</button>
					<button type="reset" class="btn btn-success">Clear</button>
					<br> <br> <a href="<c:url value="/register"/>" type="button"
						class="btn btn-link">Register Here</a>
				</p>
	</form:form>

	
</body>
</html>
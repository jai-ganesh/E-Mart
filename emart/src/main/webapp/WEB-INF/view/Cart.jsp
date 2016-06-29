<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
li {
	float: left;
}
</style>
<title>List</title>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
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
	<div align="center">
	
	<h4>Welcome Admin</h4>
	<br>
	<br>

	<a href="getAllCategories"> Categories</a>
	<br>
	<a href="getAllSuppliers"> Suppliers</a>
</div>
</body>
</html>
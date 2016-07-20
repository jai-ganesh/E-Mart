<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Register</title>
</head>
<body>
	<form:form action="/" method="post">
		<div class="col-xs-4">
			<label for="username">User Name</label> <input type="text"
				class="form-control" name="username"  pattern="[a-zA-Z]{3,}" title="Should not contain Number" required=""> <label
				for="email">E-mail</label> <input type="email" class="form-control"
				name="email" required=""> <label for="password">Password</label>
			<input type="password" class="form-control" name="password" pattern="[a-zA-Z]{5,}" title="Minimum 4 letters"
				required=""> <label for="text">Contact No.</label> <input
				type="text" class="form-control" name="number" pattern="[0-9]{10}" title="Enter 10 Numbers" required="">
			<label for="address">Address Door no/Street:</label> <input
				type="text" class="form-control input" name="address" required="">
			 <label
				for="city">City:</label> <input type="text"
				class="form-control input" name="city" pattern="[a-zA-Z]{3,}" title="Enter Correct City Name" required=""> <label
				for="pincode">Pincode:</label> <input type="text"
				class="form-control input" name="pincode" pattern="[0-9]{6}" title="Pincode Should Contain 6 Digits" required=""> <br>
			<button type="submit" class="btn btn-success">Register</button>
			<button type="reset" class="btn btn-success">Clear</button>
		</div>
	</form:form>
	<br/>
	<br/>
<%@include file="Footer.jsp" %>
</body>
</html>
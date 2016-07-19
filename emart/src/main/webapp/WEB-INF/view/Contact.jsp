<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="navbar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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

#d1 {
	size: 200px;
}
</style>
<title>Contact Us</title>
</head>
<body>

	</div>
	<br>
	<br>
	<br>
	<div class="container">

		<div class="jumbotron">
			<img src="<c:url value="/resources/Contact.png"/>" alt="contact img"
				style="width: 150px; height: 100px;">
			<div align="right">
				<br> Address: 71,Uttam gandhi road, <br> Nungambakkam <br>
				Chennai-600024 <br> Cell no: (+91)-999999999 <br>E-mail:
				emart@gmail.com
			</div>
		</div>

		<div id="d1"></div>


	</div>

	<br/>
	<br/>
<%@include file="Footer.jsp" %>
</body>
</html>
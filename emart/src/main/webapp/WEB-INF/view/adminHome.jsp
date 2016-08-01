<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@include file="navbar.jsp"%>
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
<title>Admin</title>
<style>
table {
	border-spacing: 0.5rem;
}

td {
	padding: 0.5rem;
}
</style>
</head>
<body>
	<div align="center">
		<table>
		<tr>
		<h2>Welcome Admin</h2>
		<br>
		<td><img src="<c:url value="/resources/welcome.jpg"/>"
						style="width: 1330px; height: 330px;">
				</td>
		</tr>
			<tr align="center">
				<td> <a href="categories" class="btn btn-info" role="button">Categories </a></td>
				</tr>
				<br>
				<tr align="center">
				<td><a href="suppliers" class="btn btn-info" role="button">Suppliers </a></td>
					</tr>
					<br>
					<tr align="center">
				<td><a href="products" class="btn btn-info" role="button">  Products</a></td>

			</tr>
		</table>
		</h2>
	</div>
	<br />
	<br />
	<%@include file="Footer.jsp"%>
</body>
</html>
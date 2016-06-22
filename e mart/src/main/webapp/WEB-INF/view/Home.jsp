<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
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

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
<title>Home</title>
</head>
<body>


	<nav class="navbar navbar-inverse"> <b>

		<ul class="nav nav-pills nav-justified">
			<li><a href="<c:url value="/"/>">Home</a></li>
			<li><a href="<c:url value="/WEB-INF/view/Fruits.jsp"/>">Fruits</a></li>
			<li><a href="/Vegetables/">Vegetables</a></li>
			<li><a href="/emart/src/main/webapp/WEB-INF/view/Contact.jsp">Contact
					Us</a></li>
			<li><a href="Cart.jsp">Cart</a></li>
			<li><a href="Login.jsp">Login</a></li>
			<li><a>Welcome ${sessionScope.username}</a></li>
		</ul>
	</b></nav>


	<div class="container">
		<br>
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img src="<c:url value="/resources/2.jpg"/>" alt="Chania"
						width="460" height="345">
				</div>

				<div class="item">
					<img src="<c:url value="/resources/11.jpg"/>" alt="Chania"
						width="460" height="345">
				</div>

				<div class="item">
					<img src="<c:url value="/resources/111.jpg"/>" alt="Flower"
						width="460" height="345">
				</div>

			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
</body>
</html>
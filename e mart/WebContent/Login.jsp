<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet">

<style>

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #111;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

table {
	border-collapse: collapse;
	width: 75%;
}

th {
	height: 400px;
	vertical-align: bottom;
}
html {
	background: url(Lemon.jpg) no-repeat center center fixed;
	background-size: cover;
	
}</style>
<title>Login</title>
</head>
<body>

	<ul>
		<li><a href="Home.jsp">Home</a></li>
		<li><a href="Fruits.jsp">Fruits</a></li>
		<li><a href="Vegetables.jsp">Vegetables</a></li>
		<li><a href="Contact.jsp">Contact Us</a></li>
		<li><a href="Cart.jsp">Cart</a></li>
		<li><a href="Login.jsp">Login</a></li>
	</ul>
<div class="html">
</div>

	<div align="center">

		<form action="Fruits.jsp">
			<h1>Login</h1>
			<div>
				USERNAME:<input type="text" placeholder="xxx@yyy.com" required=""
					id="username" />
			</div>
			<br>
			<div>
				PASSWORD:<input type="password" placeholder="Password" required=""
					id="password" />
			</div>
			<br>
			<div>
				<input type="submit" value="Log in"> <input type="reset"
					value="Clear"> <a href="register.jsp">Register</a>
			</div>
		</form>


	</div>
</body>
</html>
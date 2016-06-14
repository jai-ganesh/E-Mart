<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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

.box {
	float: left;
	width: 25px;
	height: 15px;
	background-color: #FFFFFF;
}
</style>
<title>Fruits</title>
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid"></div>
	<ul class="nav navbar-nav">
		<li><a href="Home.jsp">Home</a></li>
		<li><a href="Fruits.jsp">Fruits</a></li>
		<li><a href="Vepostables.jsp">Vepostables</a></li>
		<li><a href="Contact.jsp">Contact Us</a></li>
		<li><a href="Cart.jsp">Cart</a></li>
		<li><a href="Login.jsp">Login</a></li>
		<li><a>Welcome ${sessionScope.username}</a></li>
	</ul>
	</div>
	</nav>
	<center>
		<button type="button" class="btn btn-primary">Add to Cart</button>
	</center>

<table class="table table-hover">
		<tbody>
			<tr>
				<td></td>

				<td><a href="LoginServlet" method="post"><img src="apple.png" class="img-rounded" alt="Cinque Terre"
					title="Apple" width="100" height="100"></a>
					<form>

						<div class="panel panel-default">
							<div class="panel-heading">&#8377; 35/-</div>
							<div class="panel-body" style="max-height: 10;">
								<div class="checkbox">
									<label><input type="checkbox" value="">Apple</label>
								</div>
								<input type="text" class="form-control" name="kgs"
									placeholder="kgs">
					</form></td>
				<td></td>
				<td><a href="LoginServlet" method="post"><img src="orange.png" class="img-rounded"
					alt="Cinque Terre" title="Orange" width="100" height="100"></a>
					<form>

						<div class="panel panel-default">
							<div class="panel-heading">&#8377; 25/-</div>
							<div class="panel-body" style="max-height: 10;">
								<div class="checkbox">
									<label><input type="checkbox" value="">Orange</label>
								</div>
								<input type="text" class="form-control" name="kgs"
									placeholder="kgs">
					</form></td>
				</div>
				</div>
			</tr>
			<tr></tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
			</tr>


		</tbody>
	</table>
</body>
</html>
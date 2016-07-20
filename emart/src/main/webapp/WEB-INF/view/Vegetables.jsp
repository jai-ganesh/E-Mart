<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="navbar.jsp" %>
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

.box {
	float: left;
	width: 25px;
	height: 15px;
	background-color: #FFFFFF;
}
</style>
<title>Vegetables</title>
</head>
<body>

	<table class="table table-hover">
		<tbody>
			<tr>
				<td></td>

				<td><a href="ServletInfo?id=3" method="get"><img
						src="<c:url value="/resources/onion.jpg"/>" class="img-rounded"
						alt="Cinque Terre" title="Onion" width="100" height="100"></a>
					<form>

						<div class="panel panel-default">
							<div class="panel-heading">&#8377; 30/-</div>
							<div class="panel-body" style="max-height: 10;">
							<div class="col-xs-3">
								<label>Onion</label><br>
								<input type="text" class="form-control" name="kgs"
									placeholder="kgs"><br>
									<button type="button" class="btn btn-primary">Add to Cart</button></div>
					</form></td>
				<td></td>
				<td><a href="ServletInfo?id=4" method="get"><img
						src="<c:url value="/resources/tomato.jpg"/>" class="img-rounded"
						alt="Cinque Terre" title="Tomato" width="100" height="100"></a>
					<form>

						<div class="panel panel-default">
							<div class="panel-heading">&#8377; 40/-</div>
							<div class="panel-body" style="max-height: 10;">
								<div class="col-xs-3">
								<label>Tomato</label><br>
								<input type="text" class="form-control" name="kgs"
									placeholder="kgs"><br>
									<button type="button" class="btn btn-primary">Add to Cart</button></div>
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
	<br/>
	<br/>
<%@include file="Footer.jsp" %>
</body>
</html>
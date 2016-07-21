<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
 

</head>
<body>
<script>
var val=${productinfo};
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = val;
		
	});
</script>
<table>
<tr><td width="250px"><div ng-app="myApp" ng-controller="myCtrl">
	<img src="C:\Users\Home\Downloads\img\{{list.name}}.jpg" height="200px" width="200px">
	<h1>{{list.name}}</h1>   
	    <h4>&#8377;{{list.price}}/-</h4>
		<h2>Product Details</h2>
		{{list.description}}
</div>  
 </td><td width="250px"></td>
 <td width="250px">
 <div class="col-xs-4">
		<input type="text" class="form-control" name="kgs" pattern="[0-9]{1,2}" placeholder="kgs"><br>
		<button type="button" class="btn btn-primary">Add to Cart</button></div>
 </td></tr> </table>   
<br>
<br>
 <%@ include file="Footer.jsp" %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-Mart</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
 
<style>
li {
	float: left;
}
</style>
</head>
<body>
<script>
var val=${productinfo};
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = val;
		
	});
</script>
<div ng-app="myApp" ng-controller="myCtrl">
	<h1>{{list.id}}</h1>
	<h1>{{list.name}}</h1>
		<h1>{{list.description}}</h1>
			<h1>{{list.price}}</h1>
		
	
<table>

<tr ng-repeat="x in list">

<td>{{x.id}}</td>
<td>{{x.name}}</td>
<td>{{x.description}}</td>
<td>{{x.price}}</td>
<td>{{x.category.name}}</td>
<td>{{x.supplier_id}}</td>
</tr>
</table>
</div>
	<!--  <div align="center">
		<br>
		<h2>
			<p class="bg-primary">${requestScope.name}</p>
		</h2>
		<br>${requestScope.description} <br>${requestScope.price}
	</div>
-->
</body>
</html>
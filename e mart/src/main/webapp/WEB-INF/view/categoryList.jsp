<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
<style>
table, th, td {
	border: 1px solid grey;
	border-collapse: collapse;
	padding: 5px;
}
</style>
</head>
<body>
	<script> 

	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = ${categoryList};
		
	});
</script>

	<div ng-app="myApp" ng-controller="myCtrl">

		<table>
			<tr>

				<th>Id</th>
				<th>Name</th>
				<th>Address</th>

			</tr>
			<tr ng-repeat="s in list">
				<td>{{s.id}}</td>
				<td>{{s.name}}</td>
				<td>{{s.description}}</td>
			</tr>
		</table>

	</div>
</body>
</html>
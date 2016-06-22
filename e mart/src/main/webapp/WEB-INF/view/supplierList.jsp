<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers</title>
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
		$scope.list = ${supplierList};
		
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
				<td>{{s.address}}</td>
			</tr>
		</table>

	</div>

	${message}
	<h4>List of available Suppliers</h4>
	<form:form method="post" action="updateSuppliers"
		modelAttribute="supplier">
		<table width="50%">
			<tr>
				<th>S.No</th>
				<th>Id</th>
				<th>Name</th>
				<th>Address</th>

			</tr>
			<c:forEach items="${supplierList}" var="supplier" varStatus="status">
				<tr>
					<td align="center">${status.count}</td>
					<td><input name="supplierList[${status.index}].id"
						readonly="readonly" value="${supplier.id}" /></td>
					<td><input name="supplierList[${status.index}].name"
						value="${supplier.name}" /></td>
					<td><input name="supplierList[${status.index}].address"
						value="${supplier.address}" /></td>

				</tr>
			</c:forEach>
		</table>

	</form:form>
</body>
</html>
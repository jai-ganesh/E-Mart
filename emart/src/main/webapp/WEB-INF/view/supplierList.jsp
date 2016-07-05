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

	<h2>ADD Supplier</h2>

	<form:form action="addSupplier" method="post">
		<table>
			<tr>
				<td>Supplier ID:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Supplier Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Supplier Address:</td>
				<td><input type="text" name="address"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add">
				<td><input type="reset" value="Reset">
			</tr>

		</table>

	</form:form>
	<h4>List of available Suppliers</h4>

	<table width="50%">
		<tr>

			<th align="left">Id</th>
			<th align="left">Name</th>
			<th align="left">Address</th>
			<th align="left">Edit</th>
			<th align="left">Delete</th>

		</tr>
		<c:forEach items="${supplierList}" var="supplier" varStatus="status">
			<tr>

				<td>${supplier.id}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				<td><a href="<c:url value='/supplier/edit/${supplier.id}' />">Edit</a></td>
				<td><a href="<c:url value='/supplier/remove/${supplier.id}' />">Delete</a></td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>
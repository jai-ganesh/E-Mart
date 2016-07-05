<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

	<h2>ADD Category</h2>

	<form:form action="addCategory" method="post">
		<table>
			<tr>
				<td>Category ID:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Category Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Category Description:</td>
				<td><input type="text" name="description"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add">
				<td><input type="reset" value="Reset">
			</tr>

		</table>

	</form:form>

	<br>
	<h3>Category List</h3>
	<c:if test="${!empty categoryList}">
		<table width="50%">
			<tr>

				<th align="left">Id</th>
				<th align="left">Name</th>
				<th align="left">Description</th>
				<th align="left">Edit</th>
				<th align="left">Delete</th>

			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr>
					<td>${category.id}</td>
					<td>${category.name}</td>
					<td>${category.description}</td>
					<td><a href="<c:url value='/category/edit/${category.id}' />">Edit</a></td>
					<td><a
						href="<c:url value='/category/remove/${category.id}' />">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>
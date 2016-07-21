<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page isELIgnored="false"%>
<%@include file="navbar.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers</title>

<style type="text/css">
td {
	height: 40px;
	vertical-align: bottom;
}

table.imagetable {
	font-family: verdana, arial, sans-serif;
	font-size: 11px;
	color: #333333;
	border-width: 1px;
	border-color: #999999;
	border-collapse: collapse;
}

table.imagetable th {
	background: #b5cfd2 url('cell-blue.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}

table.imagetable td {
	background: #dcddc0 url('cell-grey.jpg');
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #999999;
}
</style>
</head>
<body>
	<div align="center">


		<c:url var="addAction" value="/supplier/add"></c:url>

		<form:form action="${addAction}" commandName="supplier">
			<table>
				<c:if test="${!empty supplier.name}">
					<h1>Edit Supplier</h1>
				</c:if>
				<c:if test="${empty supplier.name}">
					<h1>Add a Supplier</h1>
				</c:if>
				<tr>
					<td><form:label path="id">
							<spring:message text="ID" />
						</form:label></td>
					<c:choose>
						<c:when test="${!empty supplier.id}">
							<td><form:input path="id" disabled="true" readonly="true" />
							</td>
						</c:when>

						<c:otherwise>
							<td><form:input path="id" pattern=".{6,7}" required="true"
									title="id should contains 6 to 7 characters" /></td>
						</c:otherwise>
					</c:choose>
				<tr>
					<form:input path="id" hidden="true" />
					<td><form:label path="name">
							<spring:message text="Name" />
						</form:label></td>
					<td><form:input path="name" required="true"
							pattern="[a-zA-Z][a-zA-Z\s]*" /></td>
				</tr>
				<tr>
					<td><form:label path="address">
							<spring:message text="Address" />
						</form:label></td>
					<td><form:input path="address" required="true"
							title="Enter city" /></td>
				</tr>
				<tr>
					<td colspan="2"><c:if test="${!empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Edit Supplier"/>" />
						</c:if> <c:if test="${empty supplier.name}">
							<input type="submit"
								value="<spring:message text="Add Supplier"/>" />
						</c:if><input type="reset" value="<spring:message text="Clear"/>" /></td>
				</tr>
			</table>
		</form:form>
		<br>
		<c:if test="${!empty supplier.name}">
			<h1></h1>
		</c:if>
		<c:if test="${empty supplier.name}">
			<h3>Supplier List</h3>
		</c:if>

		<c:if test="${!empty supplierList}">
			<table class="imagetable">
				<tr>
					<th width="80">Supplier ID</th>
					<th width="120">Supplier Name</th>
					<th width="120">Supplier Address</th>
					<th width="60">Edit</th>
					<th width="60">Delete</th>
				</tr>
				<c:forEach items="${supplierList}" var="supplier">
					<tr>
						<td>${supplier.id}</td>
						<td>${supplier.name}</td>
						<td>${supplier.address}</td>
						<td><a href="<c:url value='supplier/edit/${supplier.id}' />">Edit</a></td>
						<td><a
							href="<c:url value='supplier/remove/${supplier.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</div>
	<br />
	<br />
	<%@include file="Footer.jsp"%>
</body>
</html>
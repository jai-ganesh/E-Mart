<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Categories</title>
</head>
<body>
<div ng-app="myApp" ng-controller="myCtrl">



</div>

<script>
	var app = angular.module("myApp", []);
	app.controller("myCtrl", function($scope) {
		$scope.list = ${categoryList};
		
	});
</script>

<tr ng-repeat="s in categorylist">
<td>{{s.categoryid}}</td>
<td>{{s.categoryname}}</td>
<td>{{s.categorydescription}}</td>
</tr>
${message}
<h4>List of availabe categories</h4>
<form:form method="post" action="updateCategories" modelAttributes="category">
<table width="50%">
<tr>
<th>S.no</th>
<th>Id</th>
<th>Name</th>
<th>Description</th>
</tr>
<c:forEach items="${categoryList}" var="category" varStatus="status">
<tr>
<td align="center">${status.count}</td>
<td><input name="categoryList[${status.index}].id" readonly="readonly" value="${category.id}"/></td>
<td><input name="categoryList[${status.index}].name"  value="${category.name}"/></td>
<td><input name="categoryList[${status.index}].address"  value="${category.description}"/></td>
</tr>
</c:forEach>
</table>
</form:form>
</body>
</html>
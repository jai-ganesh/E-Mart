<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<h4>Welcome ${sessionScope.name}</h4>
	<br>
	<br>

	<a href="getAllCategories"> Categories</a>
	<br>
	<a href="getAllSuppliers"> Suppliers</a>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="navbar.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Upload File Request Page</title>
</head>
<body>
<center>
	<form method="POST" action="uploadFile" enctype="multipart/form-data">
		File to upload: <input type="file" name="file"> <br> <br>
		 <input type="submit" value="Upload"> Press here to upload the file!
	</form>
	</center>
	<br>
	<br>
	<%@include file="Footer.jsp"%>
</body>
</html>
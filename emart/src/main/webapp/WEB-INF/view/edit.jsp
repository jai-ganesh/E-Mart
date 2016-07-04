<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="addCategory" method="post">
		<table>
			<tr>
				<td>Category ID:</td>
				<td><input type="text" name="id" value={id} readonly="readonly"></td>
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
	
</body>
</html>
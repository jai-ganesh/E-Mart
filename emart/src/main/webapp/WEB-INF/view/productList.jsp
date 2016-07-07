<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products</title>
</head>
<body>
	<h2>ADD Product</h2>

	<form:form action="addProduct" method="post">
		<table>
			<tr>
				<td>Product ID:</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>Product Name:</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>Product Description:</td>
				<td><input type="text" name="description"></td>
			</tr>
			<tr>
				<td>Product Category:</td>
				<td><input type="text" name="category"></td>
			</tr>
			<tr>
				<td>Product Supplier:</td>
				<td><input type="text" name="supplier"></td>
			</tr>
			<tr>
				<td>Price:</td>
				<td><input type="text" name="price"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Add">
				<td><input type="reset" value="Reset">
			</tr>
			
		</table>

	</form:form>
${message}
<h4>List of available Products</h4>

<table width="50%">
	<tr>
	    
		<th align="left">Id</th>
		<th align="left">Name</th>
		<th align="left">Price</th>
		<th align="left">Supplier</th>
		<th align="left">Category</th>
		
	</tr>
	<c:forEach items="${productList}" var="product" varStatus="status">
		<tr>
			
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>${product.supplierID}</td>
			<td>${product.categoryID}</td>
			
		</tr>
	</c:forEach>
</table>


</body>
</html>
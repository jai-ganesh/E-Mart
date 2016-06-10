<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<style>

html {
	background: url(Lemon.jpg) no-repeat center center fixed;
	background-size: cover;
	
}
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #111;
}

li {
    float: left;
}

li a{
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}


table {
    border-collapse: collapse;
    width: 75%;
}

th {
    height: 400px;
    vertical-align: bottom;
}
</style>
<title>Register</title>
</head>
<body>

<ul>
  <li><a href="Home.jsp">Home</a></li>
  <li><a href="Fruits.jsp">Fruits</a></li>
  <li><a href="Vegetables.jsp">Vegetables</a></li>
  <li><a href="Contact.jsp">Contact Us</a></li>
  <li><a href="Cart.jsp">Cart</a></li>
<li><a href="Login.jsp">Login</a></li>
</ul>
<div align="center">
	
		<form action="Fruits.jsp">
			<table>
			<tr><td><h1>For New User</h1></td></tr>
			<tr>
			<div>
				<td>NAME: </td>
				<td><input type="text" placeholder="HENRY" required="" id="username" />
	</td></div>
			<tr><div>
				<td>E-mail ID:</td>
				<td><input type="text" placeholder="xxx@yyy.com" required="" id="email" />
			</td></div>
			</tr>
			<tr>
			<div>
				<td>Gender </td><td><input type="radio" name="gender" value="male" checked> Male
				<input type="radio" name="gender" value="male" checked> Female
			</td></div></tr>
				<td>Password:</td><td><input type="password" placeholder="Enter Password" required="" id="password" />
			</td></div>
			</tr>
			<tr>
			<div>
				<td>Conform Password:</td><td><input type="password" placeholder="Re-Enter Password" required="" id="password" />
			</td></div>
			</tr>
			<tr>
			<div>
				<td>Enter Address:</td><td><textarea rows="4" cols="16" required="" id="address" />
		</textarea>	</td></div></tr>
			<tr>
			<div>
				<td>Mobile No: </td><td><input type="text" placeholder="Enter 10 Digit mobile no" required="" id="cell no" />
			</td></div></tr>
			<tr><td></td></tr>
			<tr>
			<div>
			<td></td>
			<td>
			<input type="submit" value="Register">
				
				<input type="reset" value="Clear"></td>
			</div></tr>
	
	</table>	</form>
		
	
</div>
</body>
</html>
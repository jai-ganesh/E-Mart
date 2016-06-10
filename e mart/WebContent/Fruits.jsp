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

li a {
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
<title>Fruits</title>
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

<table cellpadding="50" align="left" >
  <tr>
  <td></td>
    <td><img alt="f1" src="apple.png" height="150px" width="150px"><form>
       <select name="items">
    <option value="1/2kg">500g-40Rs</option>
    <option value="1kg">1kg-78Rs</option>
  </select>
  <input type="button" value="Add">
</form> </td>
    <td><img alt="f2" src="orange.png" height="150px" width="150px"><form>
       <select name="items"> 
       <option value="1/2kg">500g-40Rs</option>
    <option value="1kg">1kg-78Rs</option>
  </select>
  <input type="button" value="Add">
</form></td>
    <td> </td>
    <td> </td>
    <td> </td>
  </tr>

  
</table>
</body>
</html>
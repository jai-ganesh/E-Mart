<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>


li {
    float: left;
}


.box {
    float: left;
    width: 25px;
    height: 15px;
    background-color:#FFFFFF;  
}
</style>
<title>Fruits</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    
    </div>
    <ul class="nav navbar-nav">
      <li><a href="Home.jsp">Home</a></li>
  <li><a href="Fruits.jsp">Fruits</a></li>
  <li><a href="Vegetables.jsp">Vegetables</a></li>
  <li><a href="Contact.jsp">Contact Us</a></li>
  <li><a href="Cart.jsp">Cart</a></li>
<li><a href="Login.jsp">Login</a></li> 
    </ul>
  </div>
</nav>

<table cellpadding="50" align="left" >
  <tr>
  <td></td>
  
    <td><img alt="f1" src="apple.png" height="150px" width="150px"><form>
    <div class="box" >25</div>
  <input type="checkbox" value="Add">
     <input type="text" id="apple" style="width: 55px" placeholder="KGS">
  
</form> </td>
    <td><img alt="f2" src="orange.png" height="150px" width="150px"><form>
  <div class="box">35</div>
  <input type="checkbox" value="Add">
       <input type="text" id="orange" style="width: 55px" placeholder="KGS">
  
</form></td>
    <td> </td>
    <td> </td>
    <td> </td>
  </tr>

<div align="center">

<input type="button" value="ADD TO CART">  
</div></table>
</body>
</html>
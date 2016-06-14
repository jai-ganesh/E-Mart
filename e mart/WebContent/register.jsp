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

</style>
<title>Register</title>
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
<li><a>Welcome ${sessionScope.username}</a></li> 
    </ul>
  </div>
</nav>
<div align="center">
	
		<form action="Home.jsp">
		 <form role="form">
    
     <div class="col-xs-4">
      <label for="username">User Name</label>
      <input type="text" class="form-control" name="username" required="">
      <label for="email">E-mail</label>
      <input type="email" class="form-control" name="email" required="">
          <label for="password">PASSWORD</label>
      <input type="password" class="form-control" name="password" required="">
      <label for="password">Re-Enter Password</label>
      <input type="password" class="form-control" name="password" required="">
      <label for="number">Contact No.</label>
      <input type="number" class="form-control" name="number" required="">
      <label for="address">Address Door no/Street:</label>
      <input type="text" class="form-control input" name="address" required="">
          <label for="area">Area:</label>
      <input type="text" class="form-control input" name="area" required="">
      <label for="city">City:</label>
     <input type="text" class="form-control input" name="city" required="">
         <label for="pincode">Pincode:</label>
      <input type="text" class="form-control input" name="pincode" required="">
    <br><button type="submit" class="btn btn-success">Register</button>
    
      <button type="reset" class="btn btn-success">Clear</button></div>
      
  </form>
				</form>
		
	
</div>
</body>
</html>
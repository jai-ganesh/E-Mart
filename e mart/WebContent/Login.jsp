<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/style.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
img {
    border-radius: 50%;
}

li {
	float: left;
}

</style>
<title>Login</title>
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
<div class="html">
</div>

	<center>
	<div>

		<form action="LoginServlet" method="post">
			<h1>Login</h1>
			 <form role="form">
    
     <div class="col-xs-4">
      <label for="username">USERNAME:</label>
      <input type="text" class="form-control" name="username" required="">
          <label for="password">PASSWORD:</label>
      <input type="password" class="form-control" name="password" required="">
    <br><button type="submit" class="btn btn-success">Success</button>
      <button type="reset" class="btn btn-success">Clear</button></div>
  </form>
		</form>	
	</div>
	</center>
</body>
</html>
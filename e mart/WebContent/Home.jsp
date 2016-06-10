<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<style>
html { 
  background: url(img_flower.jpg) no-repeat center fixed; 
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
<link rel="stylesheet" href="Home/.css">
<style>
.mySlides {display:none;}
</style>
<title>Home</title>
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
<body>

<table align="center">
<tr>
<div class="content" style="max-width:500px">
<img class="mySlides" src="2.jpg" style="width:160%" height="62.5%">
<img class="mySlides" src="11.jpg" style="width:180%" height="62.5%">
<img class="mySlides" src="111.jpg" style="width:170%" height="62.5%">
</div>
</tr>
<tr>

</tr>
<script>
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
      x[i].style.display = "none"; 
    }
    slideIndex++;
    if (slideIndex > x.length) {slideIndex = 1} 
    x[slideIndex-1].style.display = "block"; 
    setTimeout(carousel, 2000); 
}
</script>

</body>
</html>
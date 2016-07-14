
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="description"
	content="SO sticky footer  example snippet. An example HTML, JavaScript and CSS code for Bootstrap." />
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css"
	rel="stylesheet">
<script type='text/javascript'
	src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

<script type='text/javascript'
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/js/bootstrap.min.js"></script>

<style type="text/css">
html, body {
	height: 100%;
	/* The html and body elements cannot have any padding or margin. */
}

/* Wrapper for page content to push down footer */
#wrap {
	min-height: 100%;
	height: auto !important;
	height: 100%;
	/* Negative indent footer by it's height */
	margin: 0 auto -100px;
}

/* Set the fixed height of the footer here */
#push, #footer {
	height: 25px;
}

#footer {
	background-color: #1a1a1a;
}
/* Lastly, apply responsive CSS fixes as necessary */
@media ( max-width : 767px) {
	#footer {
		margin-left: -20px;
		margin-right: -20px;
		padding-left: 20px;
		padding-right: 20px;
	}
}
</style>
</head>


<body>


	<footer
		style="position: fixed; bottom: 0px; width: 100%; height: 30px; background-color: black;">
		<p align="right">E-Mart Services &copy; 2016 </p></footer>



</body>
</html>
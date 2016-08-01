<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="/WEB-INF/view/navbar.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-animate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<title>Shipping Details</title>



</head>
<body>
	

<div class="content">
		<fieldset>
			<legend>SHIPPING DETAILS</legend>
			
			<form:form commandName="cartdetails">
			<div class="control-group">
			<label class="control-label">NAME:</label>
			<div class="control docs-input-sizes">
			<form:input path="name" id="name" class="form-Control" required="true" />	</div>
			</div>
			
			<div class="control-group">
			<label class="control-label">ADDRESS:</label>
			<div class="control docs-input-sizes">
			<form:input path="address" id="address" class="form-Control" required="true" />	</div>
			</div>
			
			<div class="control-group">
			<label class="control-label">MOBILE NUMBER:</label>
			<div class="control docs-input-sizes">
			<form:input type="text" path="mobile" id="mobile" class="form-Control" required="true"	/>	</div>
			</div>
			
			<div class="span1">
			<input type="hidden" name="_flowExecutionKey" />
			<a href="${flowExecutionUrl}&_eventId_shippingAddProcessCompleted"><input type="submit" value="Next" class="btn btn-primary" 
			name="_eventId_shippingAddProcessCompleted"/></a>
			
			</div>
			</form:form>
			
</fieldset>
</div>

<br />
<br /><br />	


	<%@include file="/WEB-INF/view/Footer.jsp"%>
	
	</body>
	</html>
	
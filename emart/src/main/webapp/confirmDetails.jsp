<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
		
			<sf:form modelAttribute="userDetails">
				<sf:label path="id">User ID :</sf:label><sf:input path="id" disabled="true" placeholder="${userDetails.id}" />
					<br />
				<br />
				<sf:label path="name"> User Name:</sf:label><sf:input path="name" disabled="true" placeholder="${userDetails.name}"/>
					<br />
				<br />
				<sf:label path="password">Password :</sf:label><sf:input type="password" path="password" disabled="true" placeholder="${userDetails.password}"/>
					<br />
					<br />
				<sf:label path="email">Email:</sf:label><sf:input path="email" disabled="true" placeholder="${userDetails.email}"/>
					<br />
				<br />
				<sf:label path="mobile">Mobile #:</sf:label><sf:input path="mobile" disabled="true" placeholder="${userDetails.mobile}"/>
				<br />
				<br />
				<sf:label path="address">Address :</sf:label><sf:input path="address" disabled="true" placeholder="${userDetails.address}"/>
					<br />
				<br />
				<input name="_eventId_edit" type="submit" value="Edit" />
				<input name="_eventId_submit" type="submit" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
</body>
</html>
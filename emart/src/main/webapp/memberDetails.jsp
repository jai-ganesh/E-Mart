<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="\WEB-INF\view\navbar.jsp"%>
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
			<legend>Regiser Here</legend>
			
			<form:form modelAttribute="userDetails">
				<br />
				<form:label path="id">User ID:</form:label>
				<form:input path="id" pattern="[a-zA-Z]{3,}"
				title="Enter Min 3 Letters and Should not contain Number"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="name">User Name:</form:label>
				<form:input path="name" pattern="[a-zA-Z]{3,}"
				title="Enter Min 3 Letters and Should not contain Number"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="password">Password:</form:label>
				<form:input type="password" path="password" pattern="[a-zA-Z]{3,}"
				title="Enter Min 3 Letters and Should not contain Number"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="email">Email ID:</form:label>
				<form:input type="email" path="email" />
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>

				<form:label path="mobile">Mobile #:</form:label>
				<form:input path="mobile" pattern="[789][0-9]{9}" title="Enter correct Number"/>
				<br />
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<form:label path="address">Address: </form:label>
				<form:input path="address" pattern="[a-zA-Z]{5,}"
				title="Enter Min 5 Letters and Should not contain Number" />
				<br />
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('address')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				<br />
				<input name="_eventId_submit" type="submit" value="Submit" />
				<br />
			</form:form>
		</fieldset>
	</div>
	<%@include file="\WEB-INF\view\Footer.jsp"%>
</body>
</html>
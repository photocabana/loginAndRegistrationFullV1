<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login And Registration</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<h1>Welcome!</h1>
	<p>Join our growing community.</p>
	<form:form action="/register" method="POST" modelAttribute="newUser">
		<table>
			<tr>
				<td>Register</td>
			</tr>
			<tr>
	            <td>Username: </td>
	            <td>
	            	<form:errors path="username"/>
					<form:input class="input" path="username"/>
	            </td>
	        </tr>
	        <tr>
	            <td>Email: </td>
	            <td>
	            	<form:errors path="email"/>
					<form:input class="input" path="email"/>
	            </td>
	        </tr>
	        <tr>
	            <td>Password: </td>
	            <td>
	            	<form:errors path="password"/>
					<form:input class="input" path="password"/>
	            </td>
	        </tr>
	        <tr>
	            <td>Confirm Password: </td>
	            <td>
	            	<form:errors path="confirm"/>
					<form:input class="input" path="confirm"/>
	            </td>
	        </tr>
	        <tr>
	        	<td><input type="submit" value="Submit"/></td>
	        </tr>
		</table>
	</form:form>
	<br>
	<form:form action="/login" method="POST" modelAttribute="newLogin">
		<table>
	    	<tr>
	            <td>Login</td>
	        </tr>
	        <tr>
	            <td>Email: </td>
	            <td>
	            	<form:errors path="email"/>
					<form:input path="email"/>
	            </td>
	        </tr>
	        <tr>
	            <td>Password: </td>
	            <td>
	            	<form:errors path="password"/>
					<form:input path="password"/>
	            </td>
	        </tr>
	        <tr>
	        	<td><input type="submit" value="Submit"/></td>
	        </tr>
		</table>
	</form:form>
</body>
</html>
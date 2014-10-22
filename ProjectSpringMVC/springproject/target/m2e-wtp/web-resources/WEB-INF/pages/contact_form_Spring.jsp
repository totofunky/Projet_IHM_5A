<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
<title>Spring MVC Form Handling</title>
<link type="text/css" rel="stylesheet" href="/stylesheets/main.css"/>
</head>
<body>

	<h2>Add Contact</h2> 
	<form:form method="POST" action="/Home">
		<table>
			<tr>
				<td><form:label path="nom">Nom</form:label></td>
				<td><form:input path="nom" /></td>
			</tr>
			<tr>
				<td><form:label path="prenom">Prenom</form:label></td>
				<td><form:input path="prenom" /></td>
			</tr>
		</table>
		<tr>
			<td colspan="2"><input type="submit" value="Submit" /></td>
		</tr>
	</form:form>
</body>
</html>
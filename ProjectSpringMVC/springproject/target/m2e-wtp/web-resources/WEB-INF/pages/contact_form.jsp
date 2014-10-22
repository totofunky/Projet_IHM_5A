<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.google.appengine.api.users.User"%>
<%@ page import="com.google.appengine.api.users.UserService"%>
<%@ page import="com.google.appengine.api.users.UserServiceFactory"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestionnaire de contact</title>
<link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />
<link
	href="http://twitter.github.com/bootstrap/assets/css/bootstrap-1.2.0.min.css"
	rel="stylesheet">
</head>
<body>
	<h1>Ajouter un contact</h1>
	<form action="/Home" method="post">
		<table>
			<tr>
				<td><label>Nom: </label></td>
				<td><input type="text" name="nom" value="${nom}" /></td>
			</tr>
			<tr>
				<td><label>Prenom: </label></td>
				<td><input type="text" name="prenom" value="${prenom}" /></td>
			</tr>
		</table>

		<input type="submit" value="Add" />

	</form>
</body>
</html>
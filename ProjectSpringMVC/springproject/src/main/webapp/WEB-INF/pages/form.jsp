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
<title>Insert title here</title>
</head>
<body>
	<h1>Ajouter un contact</h1>
	<form action="/Home" method="post">
		<div>
			<label>Nom: </label> <input type="text" name="nom" value="${nom}" />
		</div>
		<div>
			<label>Prenom: </label><input type="text" name="prenom" value="${prenom}" />
		</div>
		<div>
			<input type="submit" value="Add" />
		</div>
	</form>
</body>
</html>
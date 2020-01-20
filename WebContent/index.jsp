<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sessions</title>
</head>
<body>
	<h2>Sessions</h2>
	<form action="LoginServlet" method="post">
		<p>
			<label for="user">User:</label>
			<input type="text" id="user" name="user" >
		</p>
		<p>
			<label for="pass">Password:</label>
			<input type="password" id="pass" name="pass" >
		</p>
		<p>
			<input type="submit" value="Login">
		</p>
	</form>
</body>
</html>
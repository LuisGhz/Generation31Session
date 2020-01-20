<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		String user = (String) session.getAttribute("user");
		String pass = (String) session.getAttribute("pass");
	%>
	<%= session.getAttribute("user")%>
	<%= session.getAttribute("pass")%>
	
	<c:set var="userb" value="${sessionScope.user}"></c:set>
	
	<c:if test="${user != null }">
		Bienvenido <c:out value="${user}"></c:out>
	</c:if>
	<c:if test="${user == null }">
		You are not logged in!
	</c:if>
	</body>
</html>
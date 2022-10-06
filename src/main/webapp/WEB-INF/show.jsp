<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
</head>
<body>
<a href="/daikichi">Home</a>
<h1>Here's your Omikuji!</h1>
<p> <c:out value="${num}"></c:out>
    <c:out value="${city}"></c:out>
    <c:out value="${realPerson}"></c:out>
    <c:out value="${hobby}"></c:out>
    <c:out value="${compliment}"></c:out>
</p>
<p>Send and show a friend!</p>
</body>
</html>
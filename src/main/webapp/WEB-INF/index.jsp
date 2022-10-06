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
<h1>Fortunes</h1>
<form action="/handle" method="get">
    <p>
        <label>Pick a number between 5-25!</label>
    <input type="number" name="num" max="25" min="5" />
    </p>

    <p>
        <label>Name a city.</label>
    <input name="city" />
    </p>

    <p>
    <label>Give us a name of a real person.</label>
    <input name="realPerson" />
    </p>

    <p>
    <label>Whats your hobby?</label>
    <input name="hobby" />
    </p>

    <p>
    <label>Say something nice to someone!</label>
    <input name="compliment" />
    </p>

<input type="submit" value="submit">
</form>
</body>
</html>

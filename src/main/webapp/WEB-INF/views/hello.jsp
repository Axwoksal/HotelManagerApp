<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: monika
  Date: 13.04.23
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hotel Manager App</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid" style="margin: auto; text-align: center; padding: 70px 0">
<h1 style="background-color:lightgray">Welcome in the Hotel Manager App</h1>
    <div class="container-fluid" style="margin: auto; text-align: center; padding: 120px 0;">
<h2>What would you like to do?</h2>
        <br>
        <br>
        <br>
    <h3><a href="<c:out value="/add"/>">Add a booking</a></h3>
<br>
    <h3><a href="<c:out value="/addClientsData"/>">Add client's data</a></h3>
<br>
    <h3><a href="<c:out value="/all-bookings"/>">Display all bookings</a></h3>
<br>
    <h3><a href="<c:out value="/all-clients"/>">Display all clients</a></h3>
        <br>
        <h3><a href="<c:out value="/free-rooms"/>">Display free rooms</a></h3>
    </div>
<%--<iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%23ffffff&ctz=Europe%2FWarsaw&hl=en_GB&src=NTI4ZWE0Mjg5NDY4Zjc3OWExNTA5YjhkNzRjMjE0MTlmNjZmYzllMWQ5OThhYmI1ZWFlOTJkZTNhNDExOTMxOUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&color=%23E67C73" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>--%>
</div>
</body>
</html>

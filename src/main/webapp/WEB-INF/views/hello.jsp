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
</head>
<body>
<h1>Welcome in the Hotel Manager App!</h1>
<a href="<c:out value="/add"/>">Add a booking</a>
<br>
<a href="<c:out value="/all-bookings"/>">Display all bookings</a>
<br>
<a href="<c:out value="/all-clients"/>">Display all clients</a>
<%--<iframe src="https://calendar.google.com/calendar/embed?height=600&wkst=1&bgcolor=%23ffffff&ctz=Europe%2FWarsaw&hl=en_GB&src=NTI4ZWE0Mjg5NDY4Zjc3OWExNTA5YjhkNzRjMjE0MTlmNjZmYzllMWQ5OThhYmI1ZWFlOTJkZTNhNDExOTMxOUBncm91cC5jYWxlbmRhci5nb29nbGUuY29t&color=%23E67C73" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>--%>
</body>
</html>

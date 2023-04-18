<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<%--
  Created by IntelliJ IDEA.
  User: monika
  Date: 12.04.23
  Time: 09:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a booking</title>
</head>
<body>
<%--@elvariable id="booking" type="pl.coderslab.finalproject.Booking"--%>
<form:form action="/add" method="post"
           modelAttribute="booking">
    </br>
    check-in: <form:input type="date" path="startDate" />
    </br>
    check-out: <form:input type="date" path="endDate" />
    </br>
    Number of guests: <form:input path="numberOfGuests" />
    </br>
    Notes: <form:textarea path="notes" rows="3"
                         cols="20"/>
    <input type="submit" value="Save">
</form:form>
</body>
</html>

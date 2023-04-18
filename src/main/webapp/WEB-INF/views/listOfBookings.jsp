<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: monika
  Date: 12.04.23
  Time: 09:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bookings</title>
</head>
<body>
<table>
<tr>
    <th>Check-in</th>
    <th>Check-out</th>
    <th>Number of guests</th>
    <th>Room number</th>
    <th>Client's last name</th>
    <th>edit</th>
    <th>cancel</th>
    <th>add client's data</th>
</tr>
<c:forEach items="${bookings}" var="booking">
    <tr>
        <td>${booking.startDate}</td>
        <td>${booking.endDate}</td>
        <td>${booking.numberOfGuests}</td>
        <td>${booking.room.number}</td>
        <td>${booking.client.lastName}</td>
        <td>Update</td>
        <td><a href="<c:out value="/addClientsData/${booking.id}"/>">Add client's data</a></td>
        <td><a href="<c:out value="/deleteBooking/${booking.id}"/>">Delete booking</a></td>
    </tr>
</c:forEach>
</table>
</body>
</html>

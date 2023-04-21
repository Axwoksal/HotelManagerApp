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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<table class="table table-light table-bordered">
    <tr>
    <thead style="text-align: center; background-color: lightgray">
    <th scope="col">Check-in</th>
    <th scope="col">Check-out</th>
    <th scope="col">Number of guests</th>
    <th scope="col">Room number</th>
    <th scope="col">Notes</th>
    <th scope="col">Client's last name</th>
    <th scope="col">price</th>
    <th scope="col">breakfast</th>
    <th scope="col">edit</th>
    <th scope="col">cancel</th>
</tr>
    </thead>
<c:forEach items="${bookings}" var="booking">
    <tr scope="row" style="text-align: center">
        <td>${booking.startDate}</td>
        <td>${booking.endDate}</td>
        <td>${booking.numberOfGuests}</td>
        <td>${booking.room.number}</td>
        <td>${booking.notes}</td>
        <td>${booking.client.lastName}</td>
        <td>${booking.price}</td>
    <c:choose>
    <c:when test="${booking.breakfast}">
    <td>yes</td>
    </c:when>
    <c:otherwise>
            <td>no</td>
    </c:otherwise>
</c:choose>
        <td><a href="<c:out value="/updateBooking/${booking.id}"/>">Update booking</a></td>
        <td><a href="<c:out value="/deleteBooking/${booking.id}"/>">Delete booking</a></td>
    </tr>
</c:forEach>
</table>
<a href="<c:out value="/"/>">Return to main menu</a>
    </div>
</div>
</body>
</html>

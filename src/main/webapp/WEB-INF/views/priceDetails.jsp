<%--@elvariable id="numberOfGuests" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="breakfastPrice" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="numberOfDays" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="PriceOfRoom" type="pl.coderslab.finalproject.BookingController"--%><%--@elvariable id="priceOfRoom" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="totalPriceForRoom" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="priceOfBreakfast" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="totalPriceForBreakfast" type="pl.coderslab.finalproject.BookingController"--%>
<%--@elvariable id="totalPrice" type="pl.coderslab.finalproject.BookingController"--%>
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
    <title>List of free rooms</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<table class="table table-light table-bordered">
    <tr>
        <thead style="text-align: center; background-color: lightgray">
        <th scope="col">number of nights</th>
        <th scope="col">room price</th>
        <th scope="col">total price for room</th>
        <th scope="col">breakfast price</th>
        <th scope="col">number of guests</th>
        <th scope="col">total price for breakfast</th>
        <th scope="col">total price</th>
        </thead>
    </tr>
    <td>${numberOfDays}</td>
    <td>${priceOfRoom}</td>
    <td>${totalPriceForRoom}</td>
    <td>${breakfastPrice}</td>
    <td>${numberOfGuests}</td>
    <td>${totalPriceForBreakfast}</td>
    <td>${totalPrice}</td>
        </tr>

</table>
<a href="<c:out value="/"/>">Return to main menu</a>
<br>
<a href="<c:out value="/all-bookings"/>">Return to the list of bookings</a>
</body>
</html>


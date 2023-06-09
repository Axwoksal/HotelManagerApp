<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<%--@elvariable id="booking" type="pl.coderslab.finalproject.Booking.Booking"--%>
<div class="container">
    <h1>Add a new booking</h1>
    <div class="card">
        <div class="card-body">
<form:form action="/add" method="post"
           modelAttribute="booking">
    <div class="form-group row">
        <label for="startDate" class="col-sm-2 col-form-label">Check-in: </label>
        <div class="col-sm-7">
    <form:input type="date" path="startDate" />
            <form:errors path="startDate" cssClass="error" />
        </div>
    </div>
    <div class="form-group row">
        <label for="endDate" class="col-sm-2 col-form-label">Check-out: </label>
        <div class="col-sm-7">
    <form:input type="date" path="endDate" />
            <br>
            <form:errors path="endDate" cssClass="error" />
        </div>
    </div>
    <div class="form-group row">
        <label for="numberOfGuests" class="col-sm-2 col-form-label">Number of guests: </label>
        <div class="col-sm-7">
    <form:input path="numberOfGuests" />
            <br>
            <form:errors path="numberOfGuests" cssClass="error" />
        </div>
    </div>
    <div class="form-group row">
        <label for="notes" class="col-sm-2 col-form-label">Notes: </label>
        <div class="col-sm-7">
    <form:textarea path="notes" rows="3"
                         cols="20"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="client.id" class="col-sm-2 col-form-label">Client: </label>
        <div class="col-sm-7">
    <form:select itemValue="id" itemLabel="lastName" items="${clients}" path="client.id"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="client.id" class="col-sm-2 col-form-label">Room: </label>
        <div class="col-sm-7">
            <form:select itemValue="id" itemLabel="number" items="${rooms}" path="room.id"/>
        </div>
    </div>
    <div class="form-group row">
        <label for="client.id" class="col-sm-2 col-form-label">Breakfast: </label>
        <div class="col-sm-7">
            <form:checkbox path="breakfast"/>
        </div>
    </div>
    <input type="submit" class="btn-primary" value="Save">
</form:form>
            <form:errors/>
            <a href="<c:out value="/"/>">Return to main menu</a>
        </div>
    </div>
</div>
</body>
</html>

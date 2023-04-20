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
    <title>Free rooms</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Give dates to display all free rooms</h1>
    <div class="card">
        <div class="card-body">
<form action="/display-free-rooms">
    <div class="form-group row">
        <label for="date1" class="col-sm-2 col-form-label">Starting date: </label>
        <div class="col-sm-7">
    <input id="date1" type="date" name="date1" />
        </div>
    </div>
    <div class="form-group row">
        <label for="date2" class="col-sm-2 col-form-label">Ending date: </label>
        <div class="col-sm-7">
    <input id="date2" type="date" name="date2" />
        </div>
    </div>
    <div class="form-group row">
        <label for="numberOfGuests" class="col-sm-2 col-form-label">Number of guests: </label>
        <div class="col-sm-7">
    <input id="numberOfGuests" name="numberOfGuests" />
        </div>
    </div>
    <input type="submit" class="btn-primary" value="Submit">
</form>
            <a href="<c:out value="/"/>">Return to main menu</a>
        </div>
    </div>
</div>
</body>
</html>

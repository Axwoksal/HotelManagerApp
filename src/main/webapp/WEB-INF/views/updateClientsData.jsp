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
    <title>Add client's data</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<%--@elvariable id="client" type="pl.coderslab.finalproject.Client"--%>
<div class="container">
    <h1>Update client's data</h1>
    <div class="card">
        <div class="card-body">
<form:form action="/updateClient" method="post"
           modelAttribute="client">
    <form:hidden path="id"/>
    <div class="form-group row">
    <label for="firstName" class="col-sm-2 col-form-label">First
        name: </label>
    <div class="col-sm-7">
    <form:input type="text" path="firstName" />
        <br>
        <form:errors path="firstName" cssClass="error" />
    </div>
        </div>
    <div class="form-group row">
        <label for="lastName" class="col-sm-2 col-form-label">Last
            name: </label>
        <div class="col-sm-7">
   <form:input type="text" path="lastName" />
            <br>
            <form:errors path="lastName" cssClass="error" />
        </div>
    </div>
    <div class="form-group row">
        <label for="email" class="col-sm-2 col-form-label">E-mail</label>
        <div class="col-sm-7">
    <form:input type="text" path="email" />
            <br>
            <form:errors path="email" cssClass="error" />
        </div>
    </div>
            <div class="form-group row">
                <label for="phone" class="col-sm-2 col-form-label">Phone number
                    </label>
                <div class="col-sm-7">
    <form:input path="phone" placeholder="+"/>
                    <br>
                    <form:errors path="phone" cssClass="error" />
                    </div>
            </div>
    <input type="submit" class="btn btn-primary" value="Save client's data">
</form:form>
            <a href="<c:out value="/"/>" class="link-primary">Return to main menu</a>
        </div>
    </div>
        </div>
</body>
</html>

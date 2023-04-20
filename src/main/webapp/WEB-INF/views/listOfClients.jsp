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
    <title>Clients</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<table class="table table-light table-bordered">
<tr>
    <thead style="text-align: center; background-color: lightgray">
    <th scope="col">first name</th>
    <th scope="col">last name</th>
    <th scope="col">email</th>
    <th scope="col">phone</th>
    <th scope="col">update</th>
    <th scope="col">delete client</th>
    </thead>
</tr>
<c:forEach items="${clients}" var="client">
    <tr scope="row" style="text-align: center">
        <td>${client.firstName}</td>
        <td>${client.lastName}</td>
        <td>${client.email}</td>
        <td>${client.phone}</td>
        <td>Update</td>
        <td><a href="<c:out value="/deleteClient/${client.id}"/>">Delete client</a></td>
    </tr>
</c:forEach>
</table>
<a href="<c:out value="/"/>">Return to main menu</a>
</body>
</html>

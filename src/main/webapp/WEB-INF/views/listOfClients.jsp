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
</head>
<body>
<table>
<tr>
    <th>First name</th>
    <th>Last name</th>
    <th>email</th>
    <th>phone</th>
    <th>Update</th>
    <th>delete client</th>
</tr>
<c:forEach items="${clients}" var="client">
    <tr>
        <td>${client.firstName}</td>
        <td>${client.lastName}</td>
        <td>${client.email}</td>
        <td>${client.phone}</td>
        <td>Update</td>
        <td><a href="<c:out value="/deleteClient/${client.id}"/>">Delete client</a></td>
    </tr>
</c:forEach>
</table>
</body>
</html>

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
    <th scope="col">Room number</th>
    <th scope="col">number of places to sleep</th>
    <th scope="col">price (euro)</th>
    <th scope="col">private bathroom</th>
    </thead>
</tr>
<c:forEach items="${freeRooms}" var="room">
    <tr scope="row" style="text-align: center">
        <td>${room.number}</td>
        <td>${room.placesToSleep}</td>
        <td>${room.price}</td>
            <c:choose>
                <c:when test="${room.privateBathroom}">
                    <td>yes</td>
                </c:when>
              <c:otherwise>
                  <td>no</td>
              </c:otherwise>
            </c:choose>
    </tr>
</c:forEach>
</table>
<a href="<c:out value="/"/>">Return to main menu</a>
</body>
</html>

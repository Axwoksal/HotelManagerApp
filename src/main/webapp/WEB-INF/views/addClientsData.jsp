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
    <title>Add client's data</title>
</head>
<body>

<%--@elvariable id="client" type="pl.coderslab.finalproject.Client"--%>
<form:form action="/addClientsData" method="post"
           modelAttribute="client">
    </br>
    First name: <form:input type="text" path="firstName" />
    </br>
    Last name: <form:input type="text" path="lastName" />
    </br>
    email: <form:input type="text" path="email" />
    </br>
    Phone: <form:input path="phone" />
    <input type="submit" value="Save client's data">
</form:form>
</body>
</html>

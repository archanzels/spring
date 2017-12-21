<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/19/2017
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
Welcome to Spring MVC using Intellij

<a href="/student/list">Student List</a>
<form:form action="/logout" method="post">
    <input type="submit" value="Log Out">
</form:form>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/21/2017
  Time: 5:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title></title>
</head>
<body>
<a href="${pageContext.request.contextPath}/student/list">Student</a>
<form:form action="/logout" method="post">
<input type="submit" value="Log Out">
</form:form>


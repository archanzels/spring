<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 2/26/2018
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Access Denied</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/403.css"/>">
</head>

<body>
<div class="error-main">
    <h1>Unauthorized</h1>
    <div class="error-heading">403</div>
    <h4>You do not have permission to access the page that you requested.</h4>
    <a href="<c:url value="/"/>" class=" btn btn-block btn-outline-dark">Back to homepage.</a>
</div>
</body>

</html>

<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/20/2017
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login Page</title>
    <link href="<c:url value="/resources/css/login.css"/>" rel="stylesheet"/>
</head>
<body>

    <h2>Login</h2>

    <form:form action="${pageContext.request.contextPath}/authenticateUser" method="post" >

        <c:if test="${param.error!=null}">
            <i class="alert">Invalid username or password</i>
        </c:if><br>

        Username:<input type="text" placeholder="Username" name="username"/>
        Password:<input type="password" placeholder="Password" name="password" />
        <input type="submit" value="Submit" class="button"/>
    </form:form>

</body>
</html>

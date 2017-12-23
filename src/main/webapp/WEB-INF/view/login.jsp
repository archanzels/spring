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
    <%--Bootstrap Core CSS--%>
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

    <%--Fonts--%>
    <link href="<c:url value="/resources/vendor/font-awesome/css/font-awesome.css"/>" rel="stylesheet">

    <%--Custom style for this template--%>
    <link href="<c:url value="/resources/css/sb-admin.css"/> " rel="stylesheet"/>

    <style>
        .alert {
            color: darkred;
        }
    </style>
</head>


<body>

<body class="bg-dark">
<div class="container">
    <div class="card card-login mx-auto mt-5">
        <div class="card-header">Login</div>
        <div class="card-body">

            <form:form action="${pageContext.request.contextPath}/authenticateUser" method="post">
                <div class="form-group">
                    <c:if test="${param.error!=null}">
                        <i class="alert" id="invalid">Invalid username or password</i>
                    </c:if>

                    <c:if test="${param.logout!=null}">
                        <i class="alert" id="logout">You have been logged out.</i>
                    </c:if>
                </div>
                <div class="form-group">
                    Username:<input class="form-control" type="text" placeholder="Enter username" name="username"
                                    onfocus="hideErrorMessage()"/>
                </div>
                <div class="form-group">
                    Password:<input class="form-control" type="password" placeholder="Password" name="password"
                                    onfocus="hideErrorMessage()"/>
                </div>
                <input class="btn btn-primary btn-block" type="submit" value="Submit" class="button"/>
            </form:form>

        </div>
    </div>
</div>
</body>

<%--JS to hide error messages from the login form--%>
<script>
    function hideErrorMessage() {
        document.getElementById("invalid").innerHTML = "";
        document.getElementById("logout").innerHTML = "";
    }

    /*   function hideLogOutMessage() {
           document.getElementById("logout").innerHTML = "";
       }*/
</script>


</html>

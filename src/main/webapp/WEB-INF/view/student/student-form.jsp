<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/20/2017
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../shared/header.jsp" %>
<br>
<h1>Add Student</h1>

<form:form modelAttribute="student" action="save" method="POST">
    ID<form:input path="id"/>
    Name<form:input path="name"/>
    <input type="submit" value="Submit"/>
</form:form>

<%@include file="../shared/footer.jsp" %>
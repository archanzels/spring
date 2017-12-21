<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/20/2017
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../shared/header.jsp" %>
<br>
<h1>Students</h1>
<a href="${pageContext.request.contextPath}/student/showAddForm">Add</a>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
    </tr>
    <c:forEach var="tempStudent" items="${students}">
        <%--Delete Link--%>
        <c:url var="deleteLink" value="/student/delete">
            <c:param name="studentId" value="${tempStudent.id}"/>
        </c:url>

        <%--Update Link--%>
        <c:url var="updateLink" value="/student/update">
            <c:param name="studentId" value="${tempStudent.id}"/>
        </c:url>

        <tr>
            <td>${tempStudent.id}</td>
            <td>${tempStudent.name}</td>
            <td><a href="${deleteLink}">Delete</a></td>
            <td><a href="${updateLink}">Update</a></td>
        </tr>
    </c:forEach>
</table>

<%@include file="../shared/footer.jsp" %>
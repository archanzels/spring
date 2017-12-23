<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/20/2017
  Time: 11:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../shared/header.jsp" %>
<div class="content-wrapper">
    <div class="container-fluid">

        <%--Table--%>
        <div class="card mb-3">
            <div class="card-header">
                Students
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-2">
                        <a href="/student/showAddForm" class="btn btn-success btn-block">Add</a>
                    </div>
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th colspan="2">Action</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Action</th>
                        </tr>
                        </tfoot>
                        <tbody>
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
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../shared/footer.jsp" %>
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
                    <%--Add Button--%>
                    <div class="col-md-2">
                        <a href="/student/showAddForm" class="btn btn-outline-success btn-block">Add</a>
                    </div>

                    <%--Import Button--%>
                    <div class="col-md-2">
                        <a href="#" class="btn btn-outline-primary btn-block">Import</a>
                    </div>
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th colspan="2" style="text-align: center;">Action</th>
                        </tr>
                        </thead>
                        <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th colspan="2" style="text-align: center;">Action</th>
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
                                <td>
                                    <a class="btn btn-danger btn-block" data-toggle="modal" data-target="#deleteModal"
                                       style="color: white;">Delete</a>
                                </td>
                                <td><a class="btn btn-dark btn-block" href="${updateLink}">Update</a></td>
                            </tr>

                            <!-- Delete Modal-->
                            <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
                                 aria-labelledby="deleteModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="deleteModalLabel">Are you Sure?</h5>
                                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">X</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">Click confirm to delete the item.</div>
                                        <div class="modal-footer">
                                            <button class="btn btn-secondary" type="button" data-dismiss="modal">
                                                Cancel
                                            </button>
                                            <a class="btn btn-primary" href="${deleteLink}">Confirm</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="../shared/footer.jsp" %>
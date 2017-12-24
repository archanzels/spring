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
        <h1>Student Details</h1>
        <hr>
        <form:form modelAttribute="student" action="save" method="POST">
        <div class="form-group">
            <div class="form-row">
                <div class="col-md-6">
                    <form:hidden path="id"/>
                    <label>First Name</label>
                    <form:input path="name" cssClass="form-control"/>
                    <form:errors path="name" cssClass="error"/>
                </div>
            </div>
        </div>

            <%--Buttons--%>
        <div class="row">
            <div class="col-md-3">
                <input class="btn btn-primary btn-block" type="submit" value="Submit"/>
            </div>
            <div class="col-md-3">
                <input class="btn btn-danger btn-block" type="Reset" value="Clear"/>
            </div>
        </div>
        </form:form>

<%@include file="../shared/footer.jsp" %>
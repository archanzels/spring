<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/25/2017
  Time: 11:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../shared/header.jsp" %>
<div class="content-wrapper">
    <div class="container-fluid">
        <div class="card mb-3">
            <div class="card-header">
                Select the Excel file for upload.
                <br>
                <i>Excel files ending in <b>.xlsx</b> are only compatible.</i>
            </div>
            <div class="card-body">
                <form:form method="post" action="processUpload" enctype="multipart/form-data">
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label>Specify the path</label>
                            <input name="excelFile" type="file" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-md-3">
                        <input class="btn btn-primary btn-block" type="submit" value="Upload"/>
                    </div>
                </div>
            </div>
            </form:form>
        </div>
    </div>
</div>
</div>

<%@include file="../shared/footer.jsp" %>
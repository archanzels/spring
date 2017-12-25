<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/24/2017
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../shared/header.jsp" %>
<div class="content-wrapper">
    <div class="container-fluid">
        <div class="card mb-3">
            <div class="card-header">
                Share Details
            </div>
            <div class="card-body">
                <form:form modelAttribute="share" action="save" method="POST">
                <form:hidden path="id"/>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-3">
                            <label>Stock Symbol</label>
                            <form:select path="stock.id" cssClass="form-control">
                                <form:option value="-1" disabled="true"> --SELECT--</form:option>
                                <c:forEach items="${stocks}" var="tempStock">
                                    <form:option value="${tempStock.id}" label="${tempStock.symbol}"/>
                                </c:forEach>
                            </form:select>
                            <form:errors path="stock" cssClass="error"/>
                        </div>
                            <%-- <div class="col-md-9">
                                 <label>Stock Name</label>
                                 <form:input path="stock.name" cssClass="form-control"/>
                                 <form:errors path="stock.name" cssClass="error"/>
                             </div>--%>
                    </div>

                    <div class="form-row">
                        <div class="col-md-4">
                            <label>Quantity</label>
                            <form:input path="quantity" cssClass="form-control"/>
                            <form:errors path="quantity" cssClass="error"/>
                        </div>

                        <div class="col-md-4">
                            <label>Purchased Price</label>
                            <form:input path="purchasePrice" cssClass="form-control"/>
                            <form:errors path="purchasePrice" cssClass="error"/>
                        </div>

                        <div class="col-md-4">
                            <label>Purchased Date</label>
                            <form:input path="purchaseDate" cssClass="form-control"/>
                            <form:errors path="purchaseDate" cssClass="error"/>
                        </div>
                    </div>
                </div>
            </div>
                <%--Buttons--%>
            <div class="card-footer">
                <div class="row">
                    <div class="col-md-3">
                        <input class="btn btn-primary btn-block" type="submit" value="Submit"/>
                    </div>
                    <div class="col-md-3">
                        <input class="btn btn-danger btn-block" type="Reset" value="Clear"/>
                    </div>
                </div>
            </div>
            </form:form>
        </div>
    </div>
</div>


<%@include file="../shared/footer.jsp" %>
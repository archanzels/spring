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

        <%--Table--%>
        <div class="card mb-3">
            <div class="card-header">
                My Shares
            </div>
            <div class="card-body">
                <div class="row">
                    <%--Add Button--%>
                    <div class="col-md-2">
                        <a href="<c:url value="/share/add"/>" class="btn btn-outline-success btn-block">Add</a>
                    </div>
                </div>
                <hr>
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Stock Symbol</th>
                            <th>Stock Name</th>
                            <th>Current Price</th>
                            <th>Purchased Quantity</th>
                            <th>Purchased Price</th>
                            <th>Purchased Date</th>
                            <th colspan="2" style="text-align: center;">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="tempShare" items="${shares}">

                            <%--Update Link--%>
                            <c:url var="updateLink" value="/share/update">
                                <c:param name="shareId" value="${tempShare.id}"/>
                            </c:url>

                            <%--Delete Link--%>
                            <c:url var="deleteLink" value="/share/delete">
                                <c:param name="shareId" value="${tempShare.id}"/>
                            </c:url>

                            <tr>
                                <td>${tempShare.id}</td>
                                <td>${tempShare.stock.symbol}</td>
                                <td>${tempShare.stock.name}</td>
                                <td>${tempShare.stock.currentPrice}</td>
                                <td>${tempShare.quantity}</td>
                                <td>${tempShare.purchasePrice}</td>
                                <td>${tempShare.purchaseDate}</td>
                                <td><a class="btn btn-dark btn-block" href="${updateLink}">Update</a></td>
                                <td><a class="btn btn-danger btn-block" href="${deleteLink}"
                                       onclick="return confirm('Are you sure?');">Delete</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


    <%@include file="../shared/footer.jsp" %>

<%--
  Created by IntelliJ IDEA.
  User: dArk
  Date: 12/21/2017
  Time: 5:37 PM
  To change this template use File | Settings | File Templates.
--%>


<footer class="sticky-footer">
    <div class="container">
        <div class="text-center">
            <small>Copyright &copy; Suman Shrestha 2017</small>
        </div>
    </div>
</footer>

<!-- Logout Modal-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">X</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<c:url value="/logout"/>">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<%--Core Plugin JavaScript--%>
<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

<%--Custom Script for all pages--%>
<script src="/resources/js/sb-admin.min.js"></script>


</body>
</html>

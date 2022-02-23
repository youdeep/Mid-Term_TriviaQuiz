<%@include file="templates/header_footer.jsp"%>

<div class="container">
    <div class="form-wrapper w-25 mx-auto vh-100 row align-items-center">
        <form action="main">
            <h3 class="text-center lead">Type your name here</h3>
            <div class="col-md-6 w-100">
                <input type="text" class="form-control" name="username" id="username" placeholder="Harry" required>
                <div hidden class="valid-feedback">
                    Lookin' Good!
                </div>
            </div>
            <div class="button d-flex justify-content-center">
                <button type="submit" class="btn btn-success mt-3">Proceed</button>
            </div>
        </form>
    </div>
</div>
</body>
</html>


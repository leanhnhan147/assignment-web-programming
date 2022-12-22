<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset ="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Group 19 - Assignment Website</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="assets/styles/styles.css" rel="stylesheet" />
    </head>
    <body>
<!-- Responsive navbar-->
<jsp:include page="views/common/nav.jsp" />
<!-- Header-->
<header class="py-5">
    <div class="container px-lg-5">
        <div class="p-4 p-lg-5 bg-light rounded-3 text-center">
            <div class="m-4 m-lg-5 row">
                <h1 class="text-info">Introduction</h1>
                    <div class="row col-12 mb-5">
                        <figure class="figure col-6 col-sm-12 col-md-6">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Son.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Nguyễn Minh Sơn - 20110713</figcaption>
                        </figure>
                        <figure class="figure col-6 col-sm-12 col-md-6">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Dung.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Đỗ Minh Dũng - 20110620</figcaption>
                        </figure>
                    </div>

                    <div class="row col-12 mt-5">
                        <figure class="figure col-4 col-sm-12 col-md-4">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Thanh.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Nguyễn Đức Thành - 20110307</figcaption>
                        </figure>
                        <figure class="figure col-4 col-sm-12 col-md-4">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Nhan.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Lê Anh Nhân - 20110689</figcaption>
                        </figure>

                        <figure class="figure col-4 col-sm-12 col-md-4">
                            <img src="<%=request.getContextPath() %>/assets/images/member/Lan.jpg" class="figure-img img-fluid rounded-circle" alt="A generic square placeholder image with rounded corners in a figure.">
                            <figcaption class="figure-caption">Đỗ Thị Mỹ Lan - 20110666</figcaption>
                        </figure>
                    </div>

            </div>
        </div>
    </div>
</header>
<!-- Page Content-->
<section id="assignment" class="pt-4">
    <div class="container px-lg-5">
        <!-- Page Features-->
        <div class="row gx-lg-5">
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-collection"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 1</h2>
                        <p class="mb-4 mt-4">Bài tập 1 - Tuần 4: Email List Murach's Book</p>
                        <a href="<%=request.getContextPath()%>/assignment/0" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-cloud-download"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 2</h2>
                        <p class="mb-4 mt-4">Bài tập 2 - Tuần 5: Crash Course HTML5 và CSS3 </p>
                        <a href="<%=request.getContextPath()%>/assignment/1" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-card-heading"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 3</h2>
                        <p class="mb-4 mt-4">Bài tập 3 - Tuần 6 - Chương 5: How to develop Servlet - Modify the Servlet for the Email List application</p>
                        <a href="<%=request.getContextPath()%>/assignment/2" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-bootstrap"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 4</h2>
                        <p class="mb-4 mt-4">Bài tập 4 - Tuần 7 - Chương 6: How to develop JSP - 6.1 Modify the JSPs for the Email List application</p>
                        <a href="<%=request.getContextPath()%>/assignment/3" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-code"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 5</h2>
                        <p class="mb-4 mt-4">Bài tập 5 - Tuần 7 - Chương 6: How to develop JSP - 6.2 Create a new JSP</p>
                        <a href="<%=request.getContextPath()%>/assignment/4" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 6</h2>
                        <p class="mb-4 mt-4">Bài tập 6 - Tuần 7 - Chương 8: How to use EL - 8.1 Modify the Email List Application</p>
                        <a href="<%=request.getContextPath()%>/assignment/5" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 7</h2>
                        <p class="mb-4 mt-4">Bài tập 7 - Tuần 7 - Chương 9: How to use JSTL - 9.1 Use JSTL in the Download Application</p>
                        <a href="<%=request.getContextPath()%>/assignment/6" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 8</h2>
                        <p class="mb-4 mt-4">Bài tập 8 - Tuần 7 - Chương 9: How to use JSTL - 9.2 Use JSTL in the Cart Application</p>
                        <a href="<%=request.getContextPath()%>/assignment/7" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 9</h2>
                        <p class="mb-4 mt-4">Bài tập 9 - Tuần 8 - Chương 7: How to work with sessions and cookies - 7.1 Use a cookie</p>
                        <a href="<%=request.getContextPath()%>/assignment/8" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 10</h2>
                        <p class="mb-4 mt-4">Bài tập 10 - Tuần 8 - Chương 7: How to work with sessions and cookies - 7.2 Use a session attribute</p>
                        <a href="<%=request.getContextPath()%>/assignment/9" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 11</h2>
                        <p class="mb-4 mt-4">Bài tập 11 - Tuần 8 - Chương 7: How to work with sessions and cookies - 7.3 Use URL rewriting instead of hidden field</p>
                        <a href="<%=request.getContextPath()%>/assignment/10" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 12</h2>
                        <p class="mb-4 mt-4">Bài tập 12 - Tuần 10 - Chương 12: How to use JDBC to work with a database - 12.1 Implement Connection Pool</p>
                        <a href="<%=request.getContextPath()%>/assignment/11" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 13</h2>
                        <p class="mb-4 mt-4">Bài tập 13 - Tuần 10 - Chương 12: How to use JDBC to work with a database - 12.2 Create a User Admin application</p>
                        <a href="<%=request.getContextPath()%>/assignment/12" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 14</h2>
                        <p class="mb-4 mt-4">Bài tập 14 - Tuần 11 - Chương 13: How to use JPA to work with a database - 13.1 Test and modify the Email List application</p>
                        <a href="<%=request.getContextPath()%>/assignment/13" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xxl-4 mb-5">
                <div class="card h-100 border border-2 border-success">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                        <h2 class="fs-4 fw-bold">Assignment 15</h2>
                        <p class="mb-4 mt-4">Bài tập 15 - Tuần 11 - Chương 13: How to use JPA to work with a database - 13.2 Create a User Admin application</p>
                        <a href="<%=request.getContextPath()%>/assignment/14" class="btn btn-outline-success">View Assignment</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-8 col-xxl-8 mb-5 mt-5">
                <div class="card h-100 border border-2 border-warning">
                    <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-send-fill"></i></div>
                        <h2 class="fs-4 fw-bold">Đồ án cuối kì</h2>
                        <p class="mb-4 mt-4">Furniture Store</p>
                        <a href="https://furniture-web-app.herokuapp.com/" class="btn btn-outline-success">View</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer-->
<jsp:include page="views/common/footer.jsp" />
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
</body>
</html>

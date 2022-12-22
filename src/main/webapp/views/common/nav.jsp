<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-lg-5">
        <a class="navbar-brand" href="#!">Group 19 's Assignment</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item btn btn-outline-success m-2"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/index.jsp">Home</a></li>
                <li class="nav-item btn btn-outline-success m-2"><a class="nav-link active" aria-current="page" href="<%=request.getContextPath()%>/index.jsp#assignment">Bài tập</a></li>
            </ul>
        </div>
    </div>
</nav>

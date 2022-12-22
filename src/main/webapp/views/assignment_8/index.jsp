<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/styles/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment8/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">

    <h1>List of albums</h1>
    <p>User Email: ${cookie.userEmail.value}</p>

    <p>
        <a href="<%=request.getContextPath()%>/assignment/8/download?action=checkUser&amp;productCode=8601">
            86 (the band) - True Life Songs and Pictures
        </a><br>

        <a href="<%=request.getContextPath()%>/assignment/8/download?action=checkUser&amp;productCode=pf01">
            Paddlefoot - The First CD
        </a><br>

        <a href="<%=request.getContextPath()%>/assignment/8/download?action=checkUser&amp;productCode=pf02">
            Paddlefoot - The Second CD
        </a><br>

        <a href="<%=request.getContextPath()%>/assignment/8/download?action=checkUser&amp;productCode=jr01">
            Joe Rut - Genuine Wood Grained Finish
        </a>
    </p>

</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

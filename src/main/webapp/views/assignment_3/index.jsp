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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment3/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
    <%@ include file="/views/common/assignment_3/header.jsp" %>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
        email address below.</p>

    <c:if test="${message != null}">
        <p><i>${message}</i></p>
    </c:if>

    <form action="<%=request.getContextPath()%>/assignment/3/EmailList" method="post">
        <input type="hidden" name="action" value="add">
        <label class="pad_top">Email:</label>
        <input type="email" name="email" value="${user.email}"><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value="${user.firstName}"><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"><br>
        <label>&nbsp;</label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>

    <%@ include file="/views/common/assignment_3/footer.jsp" %>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

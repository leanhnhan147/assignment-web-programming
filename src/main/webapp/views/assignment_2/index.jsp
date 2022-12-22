<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/assets/styles/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment2/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
        email address below.</p>
    <p><i><%=request.getAttribute("message")%></i></p>

    <form action="<%=request.getContextPath()%>/assignment/2/EmailList" method="post">
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
    <form action="<%=request.getContextPath()%>/assignment/2/test" method="post">
        <input type="hidden" name="action" value="add">
        <input type="submit" value="Test" class="margin_left">
    </form>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

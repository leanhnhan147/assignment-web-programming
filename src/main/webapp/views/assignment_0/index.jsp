<%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 9/22/2022
  Time: 1:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Java Servlets and JSP</title>
    <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<%=request.getContextPath()%>/assets/styles/styles.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/assets/styles/assignment0/main.css" rel="stylesheet" />
</head>
<body>

<jsp:include page="/views/common/nav.jsp" />
<div class="main">
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and email address below.</p>
    <form action="<%=request.getContextPath()%>/assignment/0/EmailJoin" method="post">
        <input type="hidden" name="action" value="add">
        <label>Email: </label>
        <input type="email" name="email" required/> <br />
        <label>First Name: </label>
        <input type="text" name="firstName" required/> <br />
        <label>Last Name: </label>
        <input type="text" name="lastName" required/> <br />

        <label>&nbsp;</label>
        <input type="submit" value="Join Now" id="submit">
    </form>
</div>
<jsp:include page="/views/common/footer.jsp" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

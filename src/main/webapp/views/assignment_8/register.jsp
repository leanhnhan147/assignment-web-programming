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
  <h1>Download registration</h1>

  <p>To register for our downloads, enter your name and email
    address below. Then, click on the Submit button.</p>

  <form action="<%=request.getContextPath()%>/assignment/8/download" method="post">
    <input type="hidden" name="action" value="registerUser">
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user8.email}"><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user8.firstName}"><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user8.lastName}"><br>
    <label>&nbsp;</label>
    <input type="submit" value="Register" class="margin_left">
  </form>

</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

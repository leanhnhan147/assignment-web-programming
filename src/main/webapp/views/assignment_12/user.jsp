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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment12/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
  <h1>Update User</h1>
  <p>NOTE: You can't update the email address.</p>
  <form action="<%=request.getContextPath()%>/assignment/12/userAdmin" method="post">
    <input type="hidden" name="action" value="update_user">
    <label class="pad_top">Email:</label>
    <input type="email" name="email" value="${user.email}"
           readonly><br>
    <label class="pad_top">First Name:</label>
    <input type="text" name="firstName" value="${user.firstName}"
           required><br>
    <label class="pad_top">Last Name:</label>
    <input type="text" name="lastName" value="${user.lastName}"
           required><br>
    <label>&nbsp;</label>
    <input type="submit" value="Update" class="margin_left">
  </form>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

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

  <h1>Users</h1>

  <table>

    <tr>
      <th>First Name</th>
      <th>Last Name</th>
      <th colspan="3">Email</th>
    </tr>
    <c:forEach var="user" items="${users}">
      <tr>
        <td>${user.firstName}</td>
        <td>${user.lastName}</td>
        <td>${user.email}</td>
        <td><a href="<%=request.getContextPath()%>/assignment/12/userAdmin?action=display_user&amp;email=${user.email}">Update</a></td>
        <td><a href="<%=request.getContextPath()%>/assignment/12/userAdmin?action=delete_user&amp;email=${user.email}">Delete</a></td>
      </tr>
    </c:forEach>

  </table>

  <p><a href="<%=request.getContextPath()%>/assignment/12/userAdmin">Refresh</a></p>
  <p><a href="<%=request.getContextPath()%>/assignment/12/addUser">Create User</a></p>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

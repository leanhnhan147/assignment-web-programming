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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment4/main.css" type="text/css"/>
  </head>

  <body>
  <jsp:include page="/views/common/nav.jsp" />
    <div class="main">
      <h1>Thanks for taking our survey!</h1>

      <p>Here is the information that you entered:</p>

      <label>Email:</label>
      <span>${user.email}</span><br>
      <label>First Name:</label>
      <span>${user.firstName}</span><br>
      <label>Last Name:</label>
      <span>${user.lastName}</span><br>
      <label>Heard From:</label>
      <span>${user.heardFrom}</span><br>
      <label>Updates:</label>
      <span>${user.wantsUpdates}</span><br>

      <c:if test="${user.wantsUpdates == 'Yes'}">
        <label>Contact Via:</label>
        <span>${user.contactVia}</span>
      </c:if>
      <a class="btn btn-outline-info d-block w-25 mt-4" href="<%=request.getContextPath()%>/assignment/4">Return</a>
    </div>
  <jsp:include page= "/views/common/footer.jsp" />
  </body>
</html>

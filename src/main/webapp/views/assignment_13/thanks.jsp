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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment13/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
  <h1>Thanks for joining our email list</h1>

  <p>Here is the information that you entered:</p>

  <label>Email:</label>
  <span>${user.email}</span><br>
  <label>First Name:</label>
  <span>${user.firstName}</span><br>
  <label>Last Name:</label>
  <span>${user.lastName}</span><br>

  <p>To enter another email address, click on the Back
    button in your browser or the Return button shown
    below.</p>

  <form action="" method="post">
    <input type="hidden" name="action" value="join">
    <input type="submit" value="Return">
  </form>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

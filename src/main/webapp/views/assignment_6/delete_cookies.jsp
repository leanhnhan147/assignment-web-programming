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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment6/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
  <h1>Cookies</h1>

  <p>All persistent cookies have been removed from this browser.</p>

  <p><a href="<%=request.getContextPath()%>/assignment/6/download?action=viewAlbums">View list of albums</a></p>

  <p><a href="<%=request.getContextPath()%>/assignment/6/download?action=viewCookies">View all cookies</a></p>

</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

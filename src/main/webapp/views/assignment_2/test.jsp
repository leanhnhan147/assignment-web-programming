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
  <h1>${description}</h1>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

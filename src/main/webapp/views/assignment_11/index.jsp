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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment11/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
    <c:if test="${sqlStatement == null}">
        <c:set var="sqlStatement" value="select * from User" />
    </c:if>

    <h1>The SQL Gateway</h1>
    <p>Enter an SQL statement and click the Execute button.</p>

    <p><b>SQL statement:</b></p>
    <form action="<%=request.getContextPath()%>/assignment/11/sqlGateway" method="post">
        <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
        <input type="submit" value="Execute">
    </form>

    <p><b>SQL result:</b></p>
    ${sqlResult}
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

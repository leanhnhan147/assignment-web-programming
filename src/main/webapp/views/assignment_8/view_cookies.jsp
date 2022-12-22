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

    <h1>Cookies</h1>

    <p>Here's a table with all of the cookies that this
        browser is sending to the current server.</p>
    <table>
        <tr>
            <th>Name</th>
            <th>Value</th>
        </tr>
        <c:forEach var="c" items="${cookie}">
            <tr>
                <td>${c.value.name}</td>
                <td>${c.value.value}</td>
            </tr>
        </c:forEach>
    </table>

    <p><a href="<%=request.getContextPath()%>/assignment/8/download?action=viewAlbums">View list of albums</a></p>

    <p><a href="<%=request.getContextPath()%>/assignment/8/download?action=deleteCookies">Delete all persistent cookies</a></p>

</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

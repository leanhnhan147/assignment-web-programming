<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Thank</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/assets/styles/styles.css" rel="stylesheet" />
        <link href="<%=request.getContextPath() %>/assets/styles/assignment1/styles.css" rel="stylesheet" >
    </head>
    <body>

    <jsp:include page="/views/common/nav.jsp" />
    <div class="main">
        <jsp:useBean id="user" class="controllers.assignment1.User" scope="request"/>
        <h1>Thanks for submitting</h1>
        <p>Here is the information that you entered:</p>
        <label>Email: </label>
        <span><jsp:getProperty name="user" property="email"/></span><br>
        <label>First Name: </label>
        <span><jsp:getProperty name="user" property="firstName"/></span><br>
        <label>Last Name: </label>
        <span><jsp:getProperty name="user" property="lastName"/></span><br>
        <label>Date Of Birth: </label>
        <span><%=new SimpleDateFormat("yyyy-MM-dd").format(user.getDob())%></span><br>
        <form action="<%=request.getContextPath()%>/assignment/1/survey" method="get">
            <input type="submit" value="Return">
        </form>
    </div>

    <jsp:include page="/views/common/footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

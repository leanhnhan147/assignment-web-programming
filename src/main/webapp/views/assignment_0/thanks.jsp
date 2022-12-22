<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Java Servlets and JSP</title>
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="<%=request.getContextPath()%>/assets/styles/styles.css" rel="stylesheet" />
        <link href="<%=request.getContextPath()%>/assets/styles/assignment0/main.css" rel="stylesheet" >
    </head>
    <body>
    <jsp:include page="/views/common/nav.jsp" />
    <div class="main">
        <jsp:useBean id="user" class="controllers.assignment0.User" scope="request"/>
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information that you entered:</p>
        <label>Email: </label>
        <span><jsp:getProperty name="user" property="email"/></span><br>
        <label>First Name: </label>
        <span><jsp:getProperty name="user" property="firstName"/></span><br>
        <label>Last Name: </label>
        <span><jsp:getProperty name="user" property="lastName"/></span><br>
        <p>To enter another email address, click on the Back button in your browser or the Return button shown below</p>
        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
    </div>
    <jsp:include page="/views/common/footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>

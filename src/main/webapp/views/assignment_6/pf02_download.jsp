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

  <h1>Downloads</h1>

  <h2>Paddlefoot - The Second CD</h2>

  <table>
    <tr>
      <th>Song title</th>
      <th>Audio Format</th>
    </tr>
    <tr>
      <td>Neon Lights</td>
      <td><a href="<%=request.getContextPath()%>/musicStore/sound/${productCode}/neon.mp3">MP3</a></td>
    </tr>
    <tr>
      <td>Tank Hill</td>
      <td><a href="<%=request.getContextPath()%>/musicStore/sound/${productCode}/tank.mp3">MP3</a></td>
    </tr>
  </table>

  <p><a href="<%=request.getContextPath()%>/assignment/6/download?action=viewAlbums">View list of albums</a></p>

  <p><a href="<%=request.getContextPath()%>/assignment/6/download?action=viewCookies">View all cookies</a></p>


</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

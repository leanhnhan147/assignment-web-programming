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
  <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment7/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">
  <h1>CD list</h1>
  <table>
    <tr>
      <th>Description</th>
      <th class="right">Price</th>
      <th>&nbsp;</th>
    </tr>
    <c:forEach var="product" items="${products}">
      <tr>
        <td><c:out value='${product.description}'/></td>
        <td class="right">${product.priceCurrencyFormat}</td>
        <td><form action="<%=request.getContextPath()%>/assignment/7/cart" method="post">
          <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
          <input type="submit" value="Add To Cart">
        </form></td>
      </tr>
    </c:forEach>
  </table>
</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

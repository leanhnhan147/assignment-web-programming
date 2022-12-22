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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/styles/assignment10/main.css" type="text/css"/>
</head>
<body>
<jsp:include page="/views/common/nav.jsp" />
<div class="main">

    <h1>Your cart</h1>

    <table>
        <tr>
            <th>Quantity</th>
            <th>Description</th>
            <th>Price</th>
            <th>Amount</th>
            <th></th>
        </tr>
        <c:forEach var="item" items="${cart10.items}">
            <tr>
                <td>
                    <form action="<%=request.getContextPath()%>/assignment/10/cart" method="post">
                        <input type="hidden" name="productCode" value="${item.product.code}">
                        <input type=text name="quantity" value="${item.quantity}" id="quantity">
                        <input type="submit" value="Update">
                    </form>
                </td>
                <td>${item.product.description}</td>
                <td>${item.product.priceCurrencyFormat}</td>
                <td>${item.totalCurrencyFormat}</td>
                <td>
                    <a href="<%=request.getContextPath()%>/assignment/10/cart?productCode=${item.product.code}&amp;quantity=0">Remove Item</a>
                    <!--
      <form action="" method="post">
        <input type="hidden" name="productCode"
               value="${item.product.code}">
        <input type="hidden" name="quantity"
               value="0">
        <input type="submit" value="Remove Item">
      </form>
      -->
                </td>
            </tr>
        </c:forEach>
    </table>

    <p><b>To change the quantity</b>, enter the new quantity
        and click on the Update button.</p>

    <form action="" method="post">
        <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue Shopping">
    </form>

    <form action="<%=request.getContextPath()%>/views/assignment_10/checkout.jsp" method="post">
        <input type="hidden" name="action" value="checkout">
        <input type="submit" value="Checkout">
    </form>

</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

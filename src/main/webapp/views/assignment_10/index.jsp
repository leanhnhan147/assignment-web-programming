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

    <h1>CD list</h1>
    <table>
        <tr>
            <th>Description</th>
            <th class="right">Price</th>
            <th>&nbsp;</th>
        </tr>
        <tr>
            <td>86 (the band) - True Life Songs and Pictures</td>
            <td class="right">$14.95</td>
            <td><form action="<%=request.getContextPath()%>/assignment/10/cart" method="post">
                <input type="hidden" name="productCode" value="8601">
                <input type="submit" value="Add To Cart">
            </form><!--<a href="cart?productCode=8601">Add To Cart</a>--></td>
        </tr>
        <tr>
            <td>Paddlefoot - The first CD</td>
            <td class="right">$12.95</td>
            <td><form action="<%=request.getContextPath()%>/assignment/10/cart" method="post">
                <input type="hidden" name="productCode" value="pf01">
                <input type="submit" value="Add To Cart">
            </form></td>
        </tr>
        <tr>
            <td>Paddlefoot - The second CD</td>
            <td class="right">$14.95</td>
            <td><form action="<%=request.getContextPath()%>/assignment/10/cart" method="post">
                <input type="hidden" name="productCode" value="pf02">
                <input type="submit" value="Add To Cart">
            </form></td>
        </tr>
        <tr>
            <td>Joe Rut - Genuine Wood Grained Finish</td>
            <td class="right">$14.95</td>
            <td><form action="<%=request.getContextPath()%>/assignment/10/cart" method="post">
                <input type="hidden" name="productCode" value="jr01">
                <input type="submit" value="Add To Cart">
            </form></td>
        </tr>
    </table>

</div>
<jsp:include page= "/views/common/footer.jsp" />
</body>
</html>

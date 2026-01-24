<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageOrder.css">
</head>
<body>
<div class="MainUI">
    <jsp:include page="/Share/admin_leftbar.jsp" />
    <div class="OrderManagerUI">
        <div class="topRow">
            <div class="topBox leftBox">
                <p class = "BoxTitle">Tổng Doanh Thu / Đơn Hàng</p>
<!--                <a class = "DetailPageLink" href="manageOrder_IncomeDetail.jsp">Xem chi tiết</a>-->
                <div class="NumberContainer">
                <div class="IncomeDisplay">203407600</div><span class = "CurrencyValue">(vnd) /</span>
                    <div class="TotalOrderDisplay">1836</div><span class = "CurrencyValue">(đơn)</span>
                </div>
            </div>
        </div>
        <div class="bottomBox">
            <p class = "BoxTitle">Đơn Hàng Trong Ngày</p>
            <a class = "DetailPageLink" href="servlet_getOrder?action=all">Xem chi tiết</a>
            <div class="OrdersDisplay">
                <c:forEach var="o" items="${orders}">
                    <a href="page_orderDetail?orderId=${o.id}" class="OrderItem">

                        <div class="OrderHeader">
                            <span class="OrderID">ID: ${o.id}</span>
                            <span class="OrderDate">${o.orderDate}</span>

                            <span class="OrderStatus
                                <c:choose>
                                    <c:when test="${o.status == 'PENDING'}">status-pending</c:when>
                                    <c:when test="${o.status == 'PROCESSING'}">status-processing</c:when>
                                    <c:when test="${o.status == 'SHIPPED'}">status-shipped</c:when>
<%--                                    <c:when test="${o.status == 'DELIVERED'}">status-completed</c:when>--%>
                                    <c:when test="${o.status == 'CANCELLED'}">status-cancelled</c:when>
                                </c:choose>
                            ">
                                    ${o.status}
                            </span>
                        </div>

                        <div class="OrderSummary">
                            <p class="CustomerName">
                                User ID: <span>${o.userId}</span>
                            </p>

                            <p class="OrderTotal">
                                Total: <span>${o.totalPrice} VND</span>
                            </p>

                            <p class="ItemsCount">
                                Items:
                                <span>
                        <c:out value="${o.items.size()}" />
                    </span>
                            </p>
                        </div>

                    </a>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</body>
</html>


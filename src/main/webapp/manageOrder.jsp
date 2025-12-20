<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <a class = "DetailPageLink" href="manageOrder_AllOrders.jsp">Xem chi tiết</a>
            <div class = OrdersDisplay>
                <a href="manageOrder_OrderDetail.jsp" class="OrderItem">
                    <div class="OrderHeader">
                        <span class="OrderID">#ORD-10234</span>
                        <span class="OrderDate">2025-11-13</span>
                        <span class="OrderStatus status-processing">Đang xử lý</span>
                    </div>

                    <div class="OrderSummary">
                        <p class="CustomerName">Customer_id: <span>Nguyen Van A</span></p>
                        <p class="OrderTotal">Total: <span>1,250,000 VND</span></p>
                        <p class="ItemsCount">Items: <span>3</span></p>
                    </div>
                </a>
                <a href="manageOrder_OrderDetail.jsp" class="OrderItem">
                    <div class="OrderHeader">
                        <span class="OrderID">#ORD-10234</span>
                        <span class="OrderDate">2025-11-13</span>
                        <span class="OrderStatus status-cancelled">Đã hủy</span>
                    </div>

                    <div class="OrderSummary">
                        <p class="CustomerName">Customer_id: <span>Nguyen Van A</span></p>
                        <p class="OrderTotal">Total: <span>1,250,000 VND</span></p>
                        <p class="ItemsCount">Items: <span>3</span></p>
                    </div>
                </a>
                <a href="manageOrder_OrderDetail.jsp" class="OrderItem">
                    <div class="OrderHeader">
                        <span class="OrderID">#ORD-10234</span>
                        <span class="OrderDate">2025-11-13</span>
                        <span class="OrderStatus status-pending">Tạm ngưng</span>
                    </div>

                    <div class="OrderSummary">
                        <p class="CustomerName">Customer_id: <span>Nguyen Van A</span></p>
                        <p class="OrderTotal">Total: <span>1,250,000 VND</span></p>
                        <p class="ItemsCount">Items: <span>3</span></p>
                    </div>
                </a>
                <a href="manageOrder_OrderDetail.jsp" class="OrderItem">
                    <div class="OrderHeader">
                        <span class="OrderID">#ORD-10234</span>
                        <span class="OrderDate">2025-11-13</span>
                        <span class="OrderStatus status-approved">Đang giao</span>
                    </div>

                    <div class="OrderSummary">
                        <p class="CustomerName">Customer_id: <span>Nguyen Van A</span></p>
                        <p class="OrderTotal">Total: <span>1,250,000 VND</span></p>
                        <p class="ItemsCount">Items: <span>3</span></p>
                    </div>
                </a>
                <a class="OrderItem">
                    <div class="OrderHeader">
                        <span class="OrderID">#ORD-10234</span>
                        <span class="OrderDate">2025-11-13</span>
                        <span class="OrderStatus status-completed">Hoàn thành</span>
                    </div>

                    <div class="OrderSummary">
                        <p class="CustomerName">Customer_id: <span>Nguyen Van A</span></p>
                        <p class="OrderTotal">Total: <span>1,250,000 VND</span></p>
                        <p class="ItemsCount">Items: <span>3</span></p>
                    </div>
                </a>
                <a class="OrderItem">
                    <div class="OrderHeader">
                        <span class="OrderID">#ORD-10234</span>
                        <span class="OrderDate">2025-11-13</span>
                        <span class="OrderStatus status-completed">Hoàn thành</span>
                    </div>

                    <div class="OrderSummary">
                        <p class="CustomerName">Customer_id: <span>Nguyen Van A</span></p>
                        <p class="OrderTotal">Total: <span>1,250,000 VND</span></p>
                        <p class="ItemsCount">Items: <span>3</span></p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
</html>


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageOrder_OrderDetail.css">
</head>
<body>
<div class="MainUI">
    <jsp:include page="/Share/admin_leftbar.jsp" />
    <div class="OrderManagerUI">
        <div class="topRow">
            <a class = "turnBack" href = "manageOrder_AllOrders.jsp">
                Quay lại
            </a>
        </div>
        <div class="OrderManageContainer">

            <!-- ================= ORDER HEADER ================= -->
            <div class="OrderHeader">
                <h2 class="OrderTitle">Chi Tiết Đơn Hàng</h2>
                <p class="OrderID">Mã đơn: <span>#OD12345</span></p>
                <p class="OrderDate">Ngày tạo: <span>2024-11-15</span></p>

                <div class="OrderStatusBox">
                    <label>Trạng thái:</label>
                    <select id="orderStatus" class="StatusSelect">
                        <option value="processing">Đang Xử Lý</option>
                        <option value="delivered">Đang Giao</option>
                        <option value="pending">Tạm Ngưng</option>
                        <option value="cancelled">Đã Hủy</option>
                    </select>
                </div>
            </div>

            <!-- ================= CUSTOMER INFO ================= -->
            <div class="CustomerBox">
                <h3>Thông Tin Khách Hàng</h3>

                <p>Tên: Nguyễn Văn A</p>
                <p>Số điện thoại: 0123456789</p>
                <p>Địa chỉ: 123/4 Quận 1, TP.HCM</p>
            </div>

            <!-- ================= ORDER ITEMS ================= -->
            <div class="OrderItemsContainer">
                <h3>Sản phẩm</h3>
                <button class = "StoredCheckButton">Kiểm hàng</button>
                <div class = "AllItemsContainer">
                    <div class="OrderDetailItem">
                        <span class="ItemName">Dây Kháng Lực</span>
                        <span class="ItemQty">x2</span>
                        <span class="ItemPrice">150,000 đ</span>
                        <span class = "StoredStatus">Còn Hàng</span>
                    </div>
                    <div class="OrderDetailItem">
                        <span class="ItemName">Thảm Yoga Cao Cấp</span>
                        <span class="ItemQty">x1</span>
                        <span class="ItemPrice">280,000 đ</span>
                        <span class = "StoredStatus">Còn Hàng</span>
                    </div>
                    <div class="OrderDetailItem">
                        <span class="ItemName">Bình Nước Thể Thao</span>
                        <span class="ItemQty">x1</span>
                        <span class="ItemPrice">120,000 đ</span>
                        <span class = "StoredStatus">Còn Hàng</span>
                    </div>
                </div>
            </div>
            <!-- ================= TOTAL ================= -->
            <div class="OrderTotalBox">
                <p class="Subtotal"><strong>Tạm tính:</strong> 550,000 đ</p>
                <p class="ShippingFee"><strong>Phí vận chuyển:</strong> 25,000 đ</p>
                <p class="FinalTotal"><strong>Tổng cộng:</strong> 575,000 đ</p>
            </div>

            <!-- ================= ACTION BUTTONS ================= -->
            <div class="ActionButtons">
                <button class="SaveBtn">Lưu Thay Đổi</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>


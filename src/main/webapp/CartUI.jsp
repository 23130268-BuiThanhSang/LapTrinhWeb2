<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/CartUI.css?v=<%=System.currentTimeMillis()%>">
</head>
<body>
<jsp:include page="/Share/header.jsp" />
<div class="CartUI">
    <div class="MainContent">
        <div class="card">
            <div class="row">
                <div class="col-md-8 cart">
                    <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>Giỏ hàng</b></h4></div>
                            <div class="col align-self-center text-right text-muted">đã chọn 3</div>
                        </div>
                    </div>
                    <div class="scrollCart">
                        <div class="row border-top border-bottom">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/1GrakTl.jpg"></div>
                                <div class="col">
                                    <div class="row text-muted">Shirt</div>
                                    <div class="row">Cotton T-shirt</div>
                                </div>
                                <div class="col">
                                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                </div>
                                <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/ba3tvGm.jpg"></div>
                                <div class="col">
                                    <div class="row text-muted">Shirt</div>
                                    <div class="row">Cotton T-shirt</div>
                                </div>
                                <div class="col">
                                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                </div>
                                <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                            </div>
                        </div>
                        <div class="row border-top border-bottom">
                            <div class="row main align-items-center">
                                <div class="col-2"><img class="img-fluid" src="https://i.imgur.com/pHQ3xT3.jpg"></div>
                                <div class="col">
                                    <div class="row text-muted">Shirt</div>
                                    <div class="row">Cotton T-shirt</div>
                                </div>
                                <div class="col">
                                    <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                                </div>
                                <div class="col">&euro; 44.00 <span class="close">&#10005;</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="back-to-shop"><a href="index.jsp">
                        &leftarrow;<span class="text-muted">Trở về trang chủ</span></a></div>
                </div>
                <div class="col-md-4 summary">
                    <div><h5><b>Summary</b></h5></div>
                    <hr>
                    <div class="row">
                        <div class="col" style="padding-left:0;">Đã chọn 3</div>
                        <div class="col text-right">&euro; 132.00</div>
                    </div>
                    <form>
                        <p>Phương thức thanh toán</p>
                        <select>
                            <option class="text-muted">Tiền mặt</option>
                            <option class="text-muted">BIDV</option>
                            <option class="text-muted">MOMO</option>
                            <option class="text-muted">TECHCOMBANK</option>
                        </select>
                        <p>Vouchers</p>
                        <input id="code" onclick="showVoucher()" placeholder="Nhập mã voucher">
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">Tổng thành tiền</div>
                        <div class="col text-right">&euro; 137.00</div>
                    </div>
                    <button class="btn">ĐẶT HÀNG</button>
                </div>
            </div>
        </div>
        <div id="voucherPopup" class="voucher-overlay">
            <div class="voucher-box">
                <div class="voucher-header">
                    <h2>Nhập Mã Voucher</h2>
                    <button class="voucher-close" onclick="closeVoucher()">X</button>
                </div>

                <p>Áp dụng Voucher để giảm phí vận chuyển, giá sản phẩm khi mua hàng trong thời gian giới hạn.</p>

                <input type="text" id="voucherInput" placeholder="Nhập mã Voucher">

                <div class="voucher-list">
                    <div class="voucher-item">
                        <div class="voucher-text">
                            <b>Voucher: 4U9W5G</b>, Thời hạn: còn 8 giờ.<br>
                            Free ship với đơn hàng trên 100.000đ.
                        </div>
                        <input type="checkbox">
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-text">
                            <b>Voucher: 1X8J4K</b>, Thời hạn: còn 1 ngày.<br>
                            Giảm 50.000đ với đơn trên 150.000đ.
                        </div>
                        <input type="checkbox">
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-text">
                            <b>Voucher: 7P5B2Q</b>, Thời hạn: còn 2 ngày.<br>
                            Giảm 30.000đ với đơn trên 100.000đ.
                        </div>
                        <input type="checkbox">
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-text">
                            <b>Voucher: 1L9D3V</b>, Thời hạn: còn 3 ngày.<br>
                            Giảm 40.000đ với đơn trên 120.000đ.
                        </div>
                        <input type="checkbox">
                    </div>

                    <div class="voucher-item">
                        <div class="voucher-text">
                            <b>Voucher: 5K2N4E</b>, Thời hạn: còn 4 ngày.<br>
                            Giảm 60.000đ với đơn trên 150.000đ.
                        </div>
                        <input type="checkbox">
                    </div>
                </div>

                <button id="voucher-apply">Áp dụng Voucher</button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="/Share/footer.jsp" />
<script src="JS/Voucher.js"></script>
</body>
</html>
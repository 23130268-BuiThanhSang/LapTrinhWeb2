<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/AccountInfo.css">
    <link rel="stylesheet" href="CSS/Style.css">
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/header.jsp" />
<div class="accInfo">
    <main class="layout layout-scroll">
        <aside class="AccountLeft">
            <div class="AvatarAccount">
                <img src="lgImg/avt.png" class="avtr" alt="avatar">
                <div class="AccountName">
                    <div class="nameus">Bùi Thanh Sang</div>
                    <div class="stk">Số tài khoản: 3820581034</div>
                </div>
            </div>
            <div class="AccountLeftOption">
                <div class="NameOptionBold active">
                    <i class="fa-solid fa-user"></i>
                    <div class="NameOption">Thông tin tài khoản</div>
                </div>
                <a href="address.jsp" class="OptionIcon">
                    <i class="fa-solid fa-clipboard-user"></i>
                    <div class="NameOption">Cập nhật hồ sơ</div>
                </a>
                <a href="changePassword.jsp" class="OptionIcon">
                    <i class="fa-solid fa-lock"></i>
                    <div class="NameOption">Đổi mật khẩu</div>
                </a>
                <a href="payment.jsp" class="OptionIcon">
                    <i class="fa-solid fa-credit-card"></i>
                    <div class="NameOption">Phương thức thanh toán</div>
                </a>
                <a href="HistorySale.jsp" class="OptionIcon">
                    <i class="fa-solid fa-cart-arrow-down"></i>
                    <div class="NameOptionBoldText">Lịch sử mua hàng</div>
                </a>
                <a href="memberCard.jsp" class="OptionIcon">
                    <i class="fa-solid fa-address-card"></i>
                    <div class="NameOption">Thẻ thành viên</div>
                </a>
                <div class="SignOut">
                    <a href="login.jsp" class="OptionSignOut">Đăng xuất</a>
                </div>
            </div>
        </aside>
            <div class="PasswordGroup">
                <div id="PasswordHeader">Thông tin tài khoản</div>
                <div class="PasswordText">
                    <div class="ChangePasswordText">Tên tài khoản</div>
                    <input type="text" placeholder="Bùi Thanh Sang" disabled>
                </div>
                <div class="PasswordText">
                    <div class="ChangePasswordText">Năm sinh</div>
                    <input type="text" placeholder="2005" disabled>
                </div>
                <div class="PasswordText">
                    <div class="ChangePasswordText">Số tài khoản</div>
                    <input type="text" placeholder="3820581034" disabled>
                </div>
                <div class="PasswordText">
                    <div class="ChangePasswordText">Số điện thoại</div>
                    <input type="text" placeholder="0829811312" disabled>
                </div>
                <div class="PasswordText">
                    <div class="ChangePasswordText">Email</div>
                    <input type="text" placeholder="23130268@st.hcmuaf.edu.vn" disabled>
                </div>
                <div class="PasswordText">
                    <div class="ChangePasswordText">Địa chỉ</div>
                    <input type="text" placeholder="123 Lý Thường Kiệt, P.7, Q.10, TP.HCM" disabled>
                </div>
            </div>
    </main>
</div>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>


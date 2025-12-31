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
<jsp:include page="/Share/header.jsp" />
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
                    <a href="AccountInfo.jsp" class="OptionIcon">
                        <i class="fa-solid fa-user"></i>
                        <div class="NameOption">Thông tin tài khoản</div>
                    </a>
                    <a href="UpdateAccountProfile.jsp" class="OptionIcon">
                        <i class="fa-solid fa-clipboard-user"></i>
                        <div class="NameOption">Cập nhật hồ sơ</div>
                    </a>
                    <div class="NameOptionBold active">
                        <i class="fa-solid fa-lock"></i>
                        <div class="NameOption">Đổi mật khẩu</div>
                    </div>
                    <a href="HistorySale.jsp" class="OptionIcon">
                        <i class="fa-solid fa-cart-arrow-down"></i>
                        <div class="NameOptionBoldText">Lịch sử mua hàng</div>
                    </a>
                    <div class="SignOut">
                        <a href="login.jsp" class="OptionSignOut">Đăng xuất</a>
                    </div>
                </div>
            </aside>
            <div class="ChangePassword">
                <div id="PasswordHeader">Đổi mật khẩu</div>
                <div class="PasswordGroup">
                    <div class="PasswordText">
                        <div class="ChangePasswordText">Mật khẩu hiện tại</div>
                        <input type="text">
                    </div>
                    <div class="PasswordText">
                        <div class="ChangePasswordText">Nhập mật khẩu mới</div>
                        <input type="text">
                    </div>
                    <div class="PasswordText">
                        <div class="ChangePasswordText">Xác nhận mật khẩu</div>
                        <input type="text">
                    </div>
                    <div class="PasswordButton">
                        <button>Xác nhận</button>
                    </div>
                </div>
            </div>
        </main>
    </div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>


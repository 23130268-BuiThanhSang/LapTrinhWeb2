<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <div class="AccountLeft">
        <div class="AvatarAccount">
            <img src="lgImg/avt.png" class="avtr">
            <div class="AccountName">
                <div class="nameus">Bùi Thanh Sang</div>
                <div class="stk">Số tài khoản: 3820581034</div>
            </div>
        </div>
        <div class="AccountLeftOption">
            <a href="currentInfo.jsp" class="OptionIcon">
                <i class="fa-solid fa-user"></i>
                <div class="NameOption">Thông tin tài khoản</div>
            </a>
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
                <div class="NameOption">Lịch sử mua hàng</div>
            </a>
            <a href="memberCard.jsp" class="OptionIcon">
                <i class="fa-solid fa-address-card"></i>
                <div class="NameOption">Thẻ thành viên</div>
            </a>
            <div class="SignOut">
                <a href=login.jsp class="OptionSignOut">Đăng xuất</a>
            </div>
        </div>
    </div>
    <div class="WelcomeAccount">
        <img src="lgImg/wcm.png" class="WelcomeImage">
        <div class="WelcomeText">Chào mừng đến với SPGYM</div>
        <div class="WelcomeText">Để cập nhật thông tin tài khoản, hãy nhấn vào "Tài khoản"</div>
    </div>
</div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>


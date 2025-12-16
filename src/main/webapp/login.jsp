<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/Style.css">
</head>
<body id = "LoginBody">
<div id= "loginPage" class="login page">
    <h2>Login</h2>
    <input type="text" placeholder="user name..." class="loginip">
    <input type="password" placeholder="password..." class="loginip"><br>
    <div class="links">
        <div class="left">
            <a href="#" onclick="showPage('forgotPage')">Đổi mật khẩu</a>
        </div>
        <div class="right">
            <a href="#" onclick="showPage('registerPage')">Đăng kí tài khoản </a>
        </div>
    </div>
    <button class="loginBt">Login</button><br>
    <div class="homeLink">
        <a href="index.jsp">Trang chủ</a>
    </div>
</div>
<div id= "registerPage" class="register page" style="display: none">
    <h2>Đăng Kí Tài Khoản</h2>
    <input type="text" placeholder="user name" class="loginip"><br>
    <input type="email" placeholder="email" class="loginip"><br>
    <input type="password" placeholder="password" class="loginip"><br>
    <input type="password" placeholder="confirm password" class="loginip">
    <button class="loginBt">Xác Nhận</button><br>
    <div class="homeLink">
        <a href="#" onclick="showPage('loginPage')">Quay lại đăng nhập</a>
    </div>
</div>
<div id= "forgotPage" class="forgotpw page" style="display:none;">
    <h2>Thay Đổi Mật Khẩu</h2>
    <input type="email" placeholder="email" class="loginip"><br>
    <input type="password" placeholder="new password" class="loginip"><br>
    <input type="password" placeholder="confirm new password" class="loginip">
    <button class="loginBt">Xác Nhận</button><br>
    <div class="homeLink">
        <a href="#" onclick="showPage('loginPage')">Quay lại đăng nhập</a>
    </div>
</div>
<script src="JS/login.js"></script>
</body>
</html>

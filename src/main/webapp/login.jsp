<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/Style.css?v=<%=System.currentTimeMillis()%>">
</head>
<body id = "LoginBody">
<form id="loginPage" class="login page" action="${pageContext.request.contextPath}/Login" method="post">
    <h2 class="loginTxt">Đăng nhập</h2>
    <input type="text" name="username" placeholder="nhập tên tài khoản" class="loginip">
    <input type="password" name="pass" placeholder="nhập mật khẩu" class="loginip"><br>
    <span class="error">${error}</span>
    <div class="links">
        <div class="left">
            <a href="#" onclick="showPage('forgotPage')">Đổi mật khẩu</a>
        </div>
        <div class="right">
            <a href="#" onclick="showPage('registerPage')">Đăng kí tài khoản</a>
        </div>
    </div>
    <button type="submit" class="loginBt">Đăng nhập</button><br>
    <div class="homeLink">
        <a href="index.jsp">Trang chủ</a>
    </div>
</form>
<div id= "registerPage" class="register page" style="display: none">
    <h2 class="loginTxt">Đăng kí tài khoản</h2>
    <input type="text" placeholder="nhập tên tài khoản" class="loginip"><br>
    <input type="email" placeholder="nhập email" class="loginip"><br>
    <input type="password" placeholder="nhập mật khẩu" class="loginip"><br>
    <input type="password" placeholder="xác nhận mật khẩu" class="loginip">
    <button class="loginBt">Xác Nhận</button><br>
    <div class="homeLink">
        <a href="#" onclick="showPage('loginPage')">Quay lại đăng nhập</a>
    </div>
</div>
<div id= "forgotPage" class="forgotpw page" style="display:none;">
    <h2 class="loginTxt">Đổi mật khẩu</h2>
    <input type="email" placeholder="nhập email" class="loginip"><br>
    <input type="password" placeholder="mật khẩu mới" class="loginip"><br>
    <input type="password" placeholder="xác nhận mật khẩu mới" class="loginip">
    <button class="loginBt">Xác Nhận</button><br>
    <div class="homeLink">
        <a href="#" onclick="showPage('loginPage')">Quay lại đăng nhập</a>
    </div>
</div>
<script src="JS/login.js"></script>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link rel="stylesheet" href="CSS/Style.css?v=<%=System.currentTimeMillis()%>">
</head>
<body id = "LoginBody">
<form id="loginPage" class="login page"
      style="<c:if test='${activePage == "register"}'>display:none;</c:if>"
      action="${pageContext.request.contextPath}/Login" method="post">
    <h2 class="loginTxt">Đăng nhập</h2>
    <input type="text" name="username" placeholder="nhập tên tài khoản" class="loginip">
    <input type="password" name="pass" placeholder="nhập mật khẩu" class="loginip"><br>
    <span class="error">${error}</span>
    <span class="success">${success}</span>
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
        <a href="HomePage.jsp">Trang chủ</a>
    </div>
</form>
<form id="registerPage" class="register page"
      style="<c:if test='${activePage != "register"}'>display:none;</c:if>"
      action="${pageContext.request.contextPath}/Register" method="post">
    <h2 class="loginTxt">Đăng kí tài khoản</h2>
    <input type="text" name="reg_username" placeholder="nhập tên tài khoản" class="loginip"><br>
    <input type="email" name="reg_email" placeholder="nhập email" class="loginip"><br>
    <input type="text" name="reg_phone" placeholder="nhập số điện thoại" class="loginip"><br>
    <input type="password" name="reg_pass" placeholder="nhập mật khẩu" class="loginip"><br>
    <input type="password" name="reg_confirm" placeholder="xác nhận mật khẩu" class="loginip"><br>
    <span class="error">${regError}</span>
    <button type="submit" class="loginBt">Xác Nhận</button><br>
    <div class="homeLink">
        <a href="#" onclick="showPage('loginPage')">Quay lại đăng nhập</a>
    </div>
</form>
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

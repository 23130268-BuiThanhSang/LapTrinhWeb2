<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="AccountLeft">
    <div class="AvatarAccount">
        <img src="lgImg/avt.png" class="avtr">
        <div class="AccountName">
            <div class="nameAdmin">Admin</div>
            <div class="stk">Quản trị viên</div>
        </div>
    </div>
    <div class="AccountLeftOption">
        <a href="manageUser.jsp" class="OptionIcon">
            <i class="fa-solid fa-user"></i>
            <div class="NameOption">Quản lí người dùng</div>
        </a>
        <a href="ManageProduct.jsp" class="OptionIcon">
            <i class="fa-solid fa-box-open"></i>
            <div class="NameOption">Quản lí sản phẩm</div>
        </a>
        <a href="manageOrder.jsp" class="OptionIcon">
            <i class="fa-solid fa-box"></i>
            <div class="NameOption">Quản lí đơn hàng</div>
        </a>
        <a href="manageUI.jsp" class="OptionIcon">
            <i class="fa-solid fa-eye"></i>
            <div class="NameOption">Quản lí giao diện</div>
        </a>
        <a href="manageAnoun.jsp" class="OptionIcon">
            <i class="fa-solid fa-bullhorn"></i>
            <div class="NameOption">Quản lí thông báo</div>
        </a>
        <div class = "button_container">
            <a href="login.jsp" class="sgoutAdmin">Đăng xuất</a>
        </div>
    </div>
</div>
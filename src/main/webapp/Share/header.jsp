<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<nav class="MainMenuBar">
    <div class="GroupLeft">
        <a href="/" class="LogoWrap">
            <img src="../lgImg/logo.png" alt="SPGYM Logo" class="Logo">
        </a>
        <span class="NameWebsite">SPGYM</span>
    </div>

    <ul class="GroupCenter">
        <c:forEach var="main" items="${listMenu}">
            <li class="MenuItem">
                <a href="${main.link}">${main.name}</a>
                <c:if test="${not empty main.subMenus}">
                    <div class="MegaBox">
                        <c:forEach var="sub" items="${main.subMenus}">
                            <div class="Column">
                                <h4>${sub.name}</h4>
                                <ul>
                                    <c:forEach var="item" items="${sub.items}">
                                        <li><a href="${item.link}">${item.name}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </c:forEach>
                    </div>
                </c:if>
            </li>
        </c:forEach>
        <li class="MenuItem"><a href="#">Hỗ trợ</a></li>
    </ul>

    <div class="GroupRight">
        <!-- Phần còn lại giữ nguyên -->
        <form class="SearchBox" role="search">
            <input type="search" placeholder="Tìm sản phẩm..." aria-label="Tìm kiếm">
            <button type="submit" aria-label ="Tìm kiếm">
                <i class="fa fa-search"></i>
            </button>
        </form>
        <button class="IconBtn User" aria-label="Tài khoản">
            <i class="fa-regular fa-user"></i>
        </button>
        <a href="/cart" class="IconBtn ShoppingCart" aria-label="Giỏ hàng">
            <i class="fa-solid fa-cart-shopping"></i>
        </a>
        <button class="IconBtn Announcement" aria-label="Thông báo">
            <i class="fa-regular fa-bell"></i>
            <div class="MegaBoxAnnouncement">
                <div class="TitleAnnouncement">Thông Báo</div>
                <div class="ContentAnnounment">
                    <a href="#" class="ItemAnnouncement">
                        <div class="TitleAnnounce">Đặt hàng thành công</div>
                        <div class="DescriptionItemAnnounce">
                            chi tiết:
                            <span class="subDescriptionAnnounce">Tạ Lục Giác 15Kg Body Sculpture - Đen ...</span>
                        </div>
                    </a>
                </div>
            </div>
        </button>
    </div>
</nav>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- 1. LẤY ĐƯỜNG DẪN GỐC (Ví dụ: /TenProject) --%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<%-- 2. QUAN TRỌNG: Link CSS phải nằm ở đây hoặc phải thêm ${root} vào file cha --%>
<link rel="stylesheet" href="${root}/CSS/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<nav class="MainMenuBar">
    <div class="GroupLeft">
        <%-- Link về trang chủ --%>
        <a href="${root}/" class="LogoWrap">
            <%-- SỬA ẢNH: Thêm ${root} và xóa mấy dấu .. đi --%>
            <img src="${root}/lgImg/logo.png" alt="SPGYM Logo" class="Logo">
        </a>
        <span class="NameWebsite">SPGYM</span>
    </div>

    <ul class="GroupCenter">
        <c:forEach var="main" items="${listMenu}">
            <li class="MenuItem">
                    <%-- SỬA LINK MENU: Thêm ${root} trước link --%>
                        <c:choose>
                            <%-- Nếu link rỗng -> Dùng javascript:void(0) để bấm vào không bị nhảy trang --%>
                            <c:when test="${empty main.link}">
                                <a href="javascript:void(0)" style="cursor: default;">${main.name}</a>
                            </c:when>

                            <%-- Nếu có link -> Tạo đường dẫn bình thường --%>
                            <c:otherwise>
                                <a href="${root}/${main.link}">${main.name}</a>
                            </c:otherwise>
                        </c:choose>

                <c:if test="${not empty main.subMenus}">
                    <div class="MegaBox">
                        <c:forEach var="sub" items="${main.subMenus}">
                            <div class="Column">
                                <h4>${sub.name}</h4>
                                <ul>
                                    <c:forEach var="item" items="${sub.items}">
                                        <li>
                                                <%-- SỬA LINK CON --%>
                                            <a href="${root}/${item.link}">${item.name}</a>
                                        </li>
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
        <form class="SearchBox" role="search">
            <input type="search" placeholder="Tìm sản phẩm..." aria-label="Tìm kiếm">
            <button type="submit" aria-label ="Tìm kiếm">
                <i class="fa fa-search"></i>
            </button>
        </form>
        <button class="IconBtn User" aria-label="Tài khoản">
            <i class="fa-regular fa-user"></i>
        </button>

        <%-- SỬA LINK GIỎ HÀNG --%>
        <a href="${root}/cart" class="IconBtn ShoppingCart" aria-label="Giỏ hàng">
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
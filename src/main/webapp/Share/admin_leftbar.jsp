<%@ page import="vn.edu.hcmuaf.fit.laptrinhweb2.BreadcrumbItem" %>
<%@ page import="java.util.List" %>
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
        <a href="getAllAccount" class="OptionIcon">
            <i class="fa-solid fa-user"></i>
            <div class="NameOption">Quản lí người dùng</div>
        </a>
        <a href="page_add_product" class="OptionIcon">
            <i class="fa-solid fa-box-open"></i>
            <div class="NameOption">Quản lí sản phẩm</div>
        </a>
        <a href="servlet_getOrder?action=today" class="OptionIcon">
            <i class="fa-solid fa-box"></i>
            <div class="NameOption">Quản lí đơn hàng</div>
        </a>
        <a href="getAllBanner" class="OptionIcon">
            <i class="fa-solid fa-eye"></i>
            <div class="NameOption">Quản lí giao diện</div>
        </a>
        <a href="manageAnoun.jsp" class="OptionIcon">
            <i class="fa-solid fa-bullhorn"></i>
            <div class="NameOption">Quản lí thông báo</div>
        </a>
        <a href="page_manageImage" class="OptionIcon">
            <i class="fa-solid fa-image"></i>
            <div class="NameOption">Quản lí ảnh</div>
        </a>

<%--        <%--%>
<%--            List<BreadcrumbItem> breadcrumb =--%>
<%--                    (List<BreadcrumbItem>) session.getAttribute("breadcrumb");--%>
<%--        %>--%>

<%--        <nav>--%>
<%--            <%--%>
<%--                if (breadcrumb != null) {--%>
<%--                    for (int i = 0; i < breadcrumb.size(); i++) {--%>
<%--                        BreadcrumbItem b = breadcrumb.get(i);--%>
<%--            %>--%>
<%--            <a href="<%= b.getUrl() %>"><%= b.getLabel() %></a>--%>
<%--            <% if (i < breadcrumb.size() - 1) { %> &gt; <% } %>--%>
<%--            <%--%>
<%--                    }--%>
<%--                }--%>
<%--            %>--%>
<%--        </nav>--%>

        <div class = "button_container">
            <a href="login.jsp" class="sgoutAdmin">Đăng xuất</a>
        </div>
    </div>
</div>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- Header / MainMenuBar fragment --%>
<nav class="MainMenuBar">
    <div class="GroupLeft">
        <a href="/" class="LogoWrap">
            <img src="lgImg/logo.png" alt="SPGYM Logo" class="Logo">
        </a>
        <span class="NameWebsite">SPGYM</span>
    </div>

    <ul class="GroupCenter">
        <li class="MenuItem">
            <a href="#">Sản Phẩm Mới</a>
            <div class="MegaBox">
                <div class="Column">
                    <h4>Đồ thể thao</h4>
                    <ul>
                        <li><a href="#">Đồ chạy bộ</a></li>
                        <li><a href="#">Đồ bơi</a></li>
                    </ul>
                </div>
                <div class="Column">
                    <h4>Thực phẩm bổ sung</h4>
                    <ul>
                        <li><a href="#">Thanh protein & đồ ăn nhẹ</a></li>
                        <li><a href="#">Bột protein thuần chay</a></li>
                        <li><a href="#">Kẽm bổ sung</a></li>
                    </ul>
                </div>
                <div class="Column">
                    <h4>Dụng cụ tập gym</h4>
                    <ul>
                        <li><a href="#">Bánh xe tập cơ bụng</a></li>
                        <li><a href="#">Dây kháng lực</a></li>
                    </ul>
                </div>
            </div>
        </li>

        <li class="MenuItem">
            <a href="#">Danh Mục</a>
            <div class="MegaBox">
                <div class="Column">
                    <h4>Danh Mục Sản Phẩm</h4>
                    <ul>
                        <li><a href="#">Dụng Cụ Tập Gym</a></li>
                        <li><a href="#">Đồ Thể Thao</a></li>
                        <li><a href="#">Thực Phẩm Bổ Sung</a></li>
                        <li><a href="#">Phụ Kiện</a></li>
                    </ul>
                </div>
            </div>
        </li>

        <li class="MenuItem">
            <a href="#">Nhãn Hàng</a>
            <div class="MegaBox">
                <div class="Column">
                    <h4>Đồ thể thao</h4>
                    <ul>
                        <li><a href="#">ADIDAS</a></li>
                        <li><a href="#">NIKE</a></li>
                        <li><a href="#">HOKA</a></li>
                        <li><a href="#">PUMA</a></li>
                        <li><a href="#">CROCS</a></li>
                    </ul>
                </div>
                <div class="Column">
                    <h4>Dụng cụ tập gym</h4>
                    <ul>
                        <li><a href="#">Eleiko</a></li>
                        <li><a href="#">NordicTrack</a></li>
                        <li><a href="#">BowFlex</a></li>
                        <li><a href="#">Precor</a></li>
                    </ul>
                </div>
            </div>
        </li>

        <li class="MenuItem">
            <a href="#">Ưu Đãi</a>
            <div class="MegaBox">
                <div class="Column">
                    <h4>Đồ thể thao</h4>
                    <ul>
                        <li><a href="#">Đồ leo núi</a></li>
                        <li><a href="#">Đồ bơi</a></li>
                        <li><a href="#">Đồ chạy bộ</a></li>
                    </ul>
                </div>
                <div class="Column">
                    <h4>Thực phẩm bổ sung</h4>
                    <ul>
                        <li><a href="#">Whey</a></li>
                        <li><a href="#">Bột protein thuần chay</a></li>
                        <li><a href="#">Kẽm bổ sung</a></li>
                    </ul>
                </div>
                <div class="Column">
                    <h4>Dụng cụ tập gym</h4>
                    <ul>
                        <li><a href="#">Suspension Trainer</a></li>
                        <li><a href="#">Barbell + đĩa tạ</a></li>
                        <li><a href="#">Kettlebell</a></li>
                    </ul>
                </div>
            </div>
        </li>

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
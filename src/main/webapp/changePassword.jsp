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
                    <a href="currentInfo.jsp" class="OptionIcon">
                        <i class="fa-solid fa-user"></i>
                        <div class="NameOption">Thông tin tài khoản</div>
                    </a>
                    <a href="address.jsp" class="OptionIcon">
                        <i class="fa-solid fa-clipboard-user"></i>
                        <div class="NameOption">Cập nhật hồ sơ</div>
                    </a>
                    <div class="NameOptionBold active">
                        <i class="fa-solid fa-lock"></i>
                        <div class="NameOption">Đổi mật khẩu</div>
                    </div>
                    <a href="payment.jsp" class="OptionIcon">
                        <i class="fa-solid fa-credit-card"></i>
                        <div class="NameOption">Phương thức thanh toán</div>
                    </a>
                    <a href="HistorySale.jsp" class="OptionIcon">
                        <i class="fa-solid fa-cart-arrow-down"></i>
                        <div class="NameOptionBoldText">Lịch sử mua hàng</div>
                    </a>
                    <a href="memberCard.jsp" class="OptionIcon">
                        <i class="fa-solid fa-address-card"></i>
                        <div class="NameOption">Thẻ thành viên</div>
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
    <footer class="footer">
        <div class="footer-container">
            <img class="logoft" src="lgImg/logo.png" alt="">
            <div class="footer-col">
                <p>Địa chỉ: Thủ Đức, Hồ Chí Minh</p>
                <p>SĐT: 0922482619</p>
                <p>Email: sportadgym@gmail.com</p>
            </div>

            <div class="footer-col">
                <h3 class="footer-title">Về Chúng Tôi</h3>
                <div class="homepage">
                    <span>Trang chủ:</span>
                    <a href="index.html">https://SPGym.vn</a>
                </div>
                <div>© 2025 SPGYM. All rights reserved.</div>
            </div>

            <div class="footer-col">
                <h3 class="footer-title">Liên kết xã hội:</h3>
                <div class="social-icons">
                    <a href="#"><img src="https://cdn.jsdelivr.net/npm/simple-icons@v9/icons/facebook.svg"></a>
                    <a href="#"><img src="https://cdn.jsdelivr.net/npm/simple-icons@v9/icons/twitter.svg"></a>
                    <a href="#"><img src="https://cdn.jsdelivr.net/npm/simple-icons@v9/icons/instagram.svg"></a>
                    <a href="#"><img src="https://cdn.jsdelivr.net/npm/simple-icons@v9/icons/youtube.svg"></a>
                </div>
            </div>
        </div>
    </footer>
<script src="JS/Notification.js"></script>
</body>
</html>


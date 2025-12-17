<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="CSS/AccountInfo.css">

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
            <div class="NameOptionBold active">
                <i class="fa-solid fa-clipboard-user"></i>
                <div class="NameOption">Cập nhật hồ sơ</div>
            </div>
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
    <div class="addressInfo">
        <div id="addressTitle">Cập nhật hồ sơ</div>
        <div class="addressList">
            <div class="adr">
                <div>*Họ tên đầy đủ </div>
                <input type="text">
            </div>
            <div class="adr">
                <div>*Năm sinh </div>
                <input type="text">
            </div>
            <div class="adr">
                <div>*Số điện thoại </div>
                <input type="text">
            </div>
            <div class="adr">
                <div>*Thành phố / Tỉnh</div>
                <select class="ComboBoxCity">
                    <option value="">-- Chọn Tỉnh/Thành phố --</option>
                    <option value="HN-01">Hà Nội</option>
                    <option value="HCM-79">TP. Hồ Chí Minh</option>
                    <option value="HP-31">Hải Phòng</option>
                    <option value="DN-48">Đà Nẵng</option>
                    <option value="CT-92">Cần Thơ</option>

                    <option value="AG-89">An Giang</option>
                    <option value="BG-24">Bắc Giang</option>
                    <option value="BK-06">Bắc Kạn</option>
                    <option value="BL-95">Bạc Liêu</option>
                    <option value="BN-27">Bắc Ninh</option>
                    <option value="VT-77">Bà Rịa - Vũng Tàu</option>
                    <option value="BT-83">Bến Tre</option>
                    <option value="BD-52">Bình Định</option>
                    <option value="BDU-74">Bình Dương</option>
                    <option value="BP-70">Bình Phước</option>
                    <option value="BTH-60">Bình Thuận</option>
                    <option value="CM-96">Cà Mau</option>
                    <option value="CB-04">Cao Bằng</option>
                    <option value="DL-66">Đắk Lắk</option>
                    <option value="DNO-67">Đắk Nông</option>
                    <option value="DB-11">Điện Biên</option>
                    <option value="DNA-75">Đồng Nai</option>
                    <option value="DT-87">Đồng Tháp</option>
                    <option value="GL-64">Gia Lai</option>
                    <option value="HG-02">Hà Giang</option>
                    <option value="HT-42">Hà Tĩnh</option>
                    <option value="HD-30">Hải Dương</option>
                    <option value="HGI-93">Hậu Giang</option>
                    <option value="HB-17">Hòa Bình</option>
                    <option value="HY-33">Hưng Yên</option>
                    <option value="KH-56">Khánh Hòa</option>
                    <option value="KG-91">Kiên Giang</option>
                    <option value="KT-62">Kon Tum</option>
                    <option value="LC-12">Lai Châu</option>
                    <option value="LD-68">Lâm Đồng</option>
                    <option value="LS-20">Lạng Sơn</option>
                    <option value="LCA-10">Lào Cai</option>
                    <option value="LA-80">Long An</option>
                    <option value="ND-36">Nam Định</option>
                    <option value="NA-40">Nghệ An</option>
                    <option value="NB-37">Ninh Bình</option>
                    <option value="NT-58">Ninh Thuận</option>
                    <option value="PT-25">Phú Thọ</option>
                    <option value="PY-54">Phú Yên</option>
                    <option value="QB-44">Quảng Bình</option>
                    <option value="QNA-49">Quảng Nam</option>
                    <option value="QNG-51">Quảng Ngãi</option>
                    <option value="QN-22">Quảng Ninh</option>
                    <option value="QT-45">Quảng Trị</option>
                    <option value="ST-94">Sóc Trăng</option>
                    <option value="SL-14">Sơn La</option>
                    <option value="TN-72">Tây Ninh</option>
                    <option value="TB-34">Thái Bình</option>
                    <option value="TNG-19">Thái Nguyên</option>
                    <option value="TH-38">Thanh Hóa</option>
                    <option value="TTH-46">Thừa Thiên Huế</option>
                    <option value="TG-82">Tiền Giang</option>
                    <option value="TV-84">Trà Vinh</option>
                    <option value="TQ-08">Tuyên Quang</option>
                    <option value="VL-86">Vĩnh Long</option>
                    <option value="VP-26">Vĩnh Phúc</option>
                    <option value="YB-15">Yên Bái</option>

                </select>
            </div>

            <div class="adr">
                <div>*Quận / Huyện / Thị xã </div>
                <input type="text">
            </div>
            <div class="adr">
                <div id="description">-Mô tả thêm (nếu có) </div>
                <input type="text">
            </div>
        </div>

        <button type="submit" class="addressButton">Lưu thông tin</button>
    </div>
</main>

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

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/StyleForPageShopping.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/Style.css">
</head>
<body>
<!--menu cho trang web-->
<jsp:include page="/Share/header.jsp" />
<!--Thanh điều hướng -->
<nav class="breadcrumb">
    <a href="#">Trang chủ</a>
    <span class="separator">›</span>
    <a href="#">Giỏ Hàng</a>
</nav>
<div class="ShoppingCartForProduct">
    <div id="voucherID" class="voucherUI">
        <div class="voucherTxt">
            <h2 id="vch2">Nhập Mã Voucher</h2>
            <button onclick="closeVoucher()">X</button>
        </div>
        <div class="voucherExplain">Áp dụng Voucher để giảm phí vận chuyển, giá sản phẩm khi mua hàng trong thời gian giới hạn.</div>
        <input type="text" class="searchVoucher" placeholder="Nhập mã Voucher">
        <div class="scrollVc">
            <div class="voucherInfo">
                <div class="vcId">Voucher: 4U9W5G, Thời hạn: còn 8 giờ.</div>
                <div class="vcInfo">Free ship với đơn hàng trên 100.000đ.</div>
                <input type="checkbox" class="checkBx">
            </div>
            <div class="voucherInfo">
                <div class="vcId">Voucher: 1X8J4K, Thời hạn: còn 1 ngày.</div>
                <div class="vcInfo">Giảm 50.000đ với đơn hàng trên 150.000đ.</div>
                <input type="checkbox" class="checkBx">
            </div>
            <div class="voucherInfo">
                <div class="vcId">Voucher: 7P5B2Q, Thời hạn: còn 2 ngày.</div>
                <div class="vcInfo">Giảm 30.000đ với đơn hàng trên 100.000đ.</div>
                <input type="checkbox" class="checkBx">
            </div>
            <div class="voucherInfo">
                <div class="vcId">Voucher: 1L9D3V, Thời hạn: còn 3 ngày.</div>
                <div class="vcInfo">Giảm 40.000đ với đơn hàng trên 120.000đ.</div>
                <input type="checkbox" class="checkBx">
            </div>
            <div class="voucherInfo">
                <div class="vcId">Voucher: 5K2N4E, Thời hạn: còn 4 ngày.</div>
                <div class="vcInfo">Giảm 60.000đ với đơn hàng trên 150.000đ.</div>
                <input type="checkbox" class="checkBx">
            </div>
            <div class="voucherInfo">
                <div class="vcId">Voucher: 9I2B4R, Thời hạn: còn 5 ngày.</div>
                <div class="vcInfo">Giảm 20.000đ với đơn hàng trên 80.000đ.</div>
                <input id="checkBxId" type="checkbox" class="checkBx">
            </div>
        </div>
        <button id="approveVc">Áp dụng Voucher</button>
    </div>
    <div class="headerShoppingCart">
        GIỎ HÀNG
    </div>
    <div class="bodyShoppingCart">
        <div class="ListProductInShoppingCart">
            <div class="ControlForAllItemsProductInShoppingCart">
                <label class="SelectAllItem">
                    <input type="Checkbox">
                    Chọn tất Cả
                </label>

            </div>
            <div class="ItemProductInshoppingCart">
                <label class="CheckboxItem">
                    <input type="checkbox">
                </label>
                <img src="https://supersports.com.vn/cdn/shop/files/DR2665-008-1.jpg?v=1732004949&width=1000" alt="Sản phẩm" class="ProductItemImage">
                <div class="ProductItemInfor">

                    <div class="ProductItemName">Tạ Lục Giác 15Kg Body Sculpture - Đen</div>
                    <div class="ProductItemBrand">BODY SCULPTURE</div>
                    <div class="ProductItemDetail">
                        <div class="ProductItemType">
                            Phân loại: <span class="TypeProductInShoppingCart">Dụng Cụ Tập Gym-ĐEN</span>
                        </div>
                        <div class="ProductItemSize">
                            Kích cỡ:<span class="sizeProductInShoppingCart">Một cỡ duy nhất</span>
                        </div>
                    </div>
                </div>
                <div class="ProductItemPrice">
                    Giá : <span>446.000đ</span>
                </div>
                <div class="ProductItemControl">
                    <div class="QuantityBoxForProduct">
                        <button>-</button>
                        <span>1</span>
                        <button>+</button>
                    </div>
                    <div class="actions">
                        <a href="#">xóa</a>
                    </div>
                </div>
            </div>
            <div class="ItemProductInshoppingCart">
                <label class="CheckboxItem">
                    <input type="checkbox">
                </label>
                <img src="https://supersports.com.vn/cdn/shop/products/BW-460-15KG-1.jpg?v=1703644838&width=1600" alt="Sản phẩm" class="ProductItemImage">
                <div class="ProductItemInfor">

                    <div class="ProductItemName">Tạ Lục Giác 15Kg Body Sculpture - Đen</div>
                    <div class="ProductItemBrand">BODY SCULPTURE</div>
                    <div class="ProductItemDetail">
                        <div class="ProductItemType">
                            Phân loại: <span class="TypeProductInShoppingCart">Dụng Cụ Tập Gym-ĐEN</span>
                        </div>
                        <div class="ProductItemSize">
                            Kích cỡ:<span class="sizeProductInShoppingCart">Một cỡ duy nhất</span>
                        </div>
                    </div>
                </div>
                <div class="ProductItemPrice">
                    Giá : <span>446.000đ</span>
                </div>
                <div class="ProductItemControl">
                    <div class="QuantityBoxForProduct">
                        <button>-</button>
                        <span>1</span>
                        <button>+</button>
                    </div>
                    <div class="actions">
                        <a href="#">xóa</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="OrderSumary">
            <div class="OrderSumaryTitle">Tóm Tắt Đơn Hàng</div>
            <div class="OrderSumaryDetail">
                <div class="SummaryRow">
                    <span>Tạm tính : </span>
                    <span>446.000đ</span>
                </div>
                <div class="SummaryRow">
                    <span>Giảm giá sản phẩm : </span>
                    <span>-0₫</span>
                </div>
                <div class="SummaryTotal">
                    <span>Tổng</span>
                    <span>446.000đ</span>
                </div>
            </div>
            <div class="VoucherSection">
                <label for="voucher">Nhập mã voucher của bạn</label>
                <div class="VoucherInputBox">
                    <input type="text" id="voucher" placeholder="Nhập mã voucher">
                    <button onclick="showVoucher()">›</button>
                </div>
            </div>
            <div class="OrderButtons">
                <button class="ContinueButton">TIẾP TỤC</button>
            </div>
        </div>
    </div>

</div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Voucher.js"></script>
<script src="JS/Notification.js"></script>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/StyleForPageShopping.css?v=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/Style.css">
</head>

<body>
<!--menu cho trang web-->
<jsp:include page="/Share/header.jsp" />
<div class="ShoppingCartForProduct">
    <div class="headerShoppingCart">
        GIỎ HÀNG
    </div>
    <div class="bodyShoppingCart">
        <div class="ListProductInShoppingCart">
            <div class="ControlForAllItemsProductInShoppingCart">
                <span class="ListTitle">Danh sách sản phẩm</span>
                <label class="SelectAllItem">
                    Chọn tất cả
                    <input type="checkbox" id="selectAllCheckbox" onclick="toggleAllProducts()">
                </label>
            </div>
            <div class="ListProductInnerScroll">
                <div class="ItemProductInshoppingCart">
                    <label class="CheckboxItem">
                        <input type="checkbox" class="item-checkbox">
                    </label>
                    <img src="https://supersports.com.vn/cdn/shop/products/BW-460-15KG-1.jpg?v=1703644838&width=1600" alt="Sản phẩm" class="ProductItemImage">
                    <div class="ProductItemInfor">
                        <div class="ProductItemName">Tên sản phẩm</div>
                        <div class="ProductItemBrand">Thương hiệu</div>
                        <div class="ProductItemBrand">Giá: 220.000đ</div>
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
                        <input type="checkbox" class="item-checkbox">
                    </label>
                    <img src="https://supersports.com.vn/cdn/shop/products/BW-460-15KG-1.jpg?v=1703644838&width=1600" alt="Sản phẩm" class="ProductItemImage">
                    <div class="ProductItemInfor">
                        <div class="ProductItemName">Tên sản phẩm</div>
                        <div class="ProductItemBrand">Thương hiệu</div>
                        <div class="ProductItemBrand">Giá: 220.000đ</div>
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
                        <input type="checkbox" class="item-checkbox">
                    </label>
                    <img src="https://supersports.com.vn/cdn/shop/products/BW-460-15KG-1.jpg?v=1703644838&width=1600" alt="Sản phẩm" class="ProductItemImage">
                    <div class="ProductItemInfor">
                        <div class="ProductItemName">Tên sản phẩm</div>
                        <div class="ProductItemBrand">Thương hiệu</div>
                        <div class="ProductItemBrand">Giá: 220.000đ</div>
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
                        <input type="checkbox" class="item-checkbox">
                    </label>
                    <img src="https://supersports.com.vn/cdn/shop/products/BW-460-15KG-1.jpg?v=1703644838&width=1600" alt="Sản phẩm" class="ProductItemImage">
                    <div class="ProductItemInfor">
                        <div class="ProductItemName">Tên sản phẩm</div>
                        <div class="ProductItemBrand">Thương hiệu</div>
                        <div class="ProductItemBrand">Giá: 220.000đ</div>
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

            <div class="CartActionsFooter">
                <button class="DeleteCartButton" id="deleteCartBtn">
                    <i class="fa-solid fa-trash-can"></i>
                    <span> Xóa giỏ hàng</span>
                </button>
            </div>
        </div>

        <div class="OrderSumary">
            <div class="OrderSumaryTitle">Tóm tắt đơn hàng</div>
            <div class="OrderSumaryDetail">
                <div class="SummaryRow">
                    <span>Đã chọn: 2 sản phẩm</span>
                </div>
                <div class="SummaryRow">
                    <span>Người nhận: Bùi Thanh Sang</span>
                </div>
                <div class="SummaryRow">
                    <span>Số điện thoại: 0829811312</span>
                </div>
                <div class="SummaryRow">
                    <span>Địa chỉ nhận hàng:</span>
                </div>
                <div class="SummaryRow">
                    <span>123 Lý Thường Kiệt, P.7, Q.10, TP.HCM</span>
                </div>
                <div class="SummaryRow">
                    <span>Mô tả thêm (nếu có): </span>
                </div>
                <div class="SummaryRow">
                    <textarea name="note" rows="7"
                              placeholder="Thời gian giao, địa điểm cụ thể..."
                              class="order-note"></textarea>
                </div>
                <div class="SummaryRow">
                    <span>Tổng số tiền (2 sản phẩm): </span>
                    <span>446.000đ</span>
                </div>
            </div>
            <div class="OrderButtons">
                <button class="ContinueButton">Đặt hàng</button>
            </div>
        </div>
    </div>
</div>
<div id="deleteProductModal" class="modal-overlay" style="display: none;">
    <div class="modal-confirm-box">
        <div class="modal-title" id="modalTitle">Xác nhận xóa sản phẩm?</div>
        <div class="modal-message" id="modalMessage">Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng không?</div>
        <div class="modal-actions">
            <button id="modalDeleteConfirm" class="modal-btn confirm">Xóa</button>
            <button id="modalDeleteCancel" class="modal-btn cancel">Hủy</button>
        </div>
    </div>
</div>

<jsp:include page="/Share/footer.jsp" />
<script src="${pageContext.request.contextPath}/JS/Notification.js"></script>
<script src="${pageContext.request.contextPath}/JS/Voucher.js?v=<%=System.currentTimeMillis()%>"></script>
<script>
    ProductQuantityHandlers();
</script>
</body>
</html>
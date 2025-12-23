<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="CSS/Style.css?v=<%=System.currentTimeMillis()%>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/StyleForProductCard.css">
</head>
<body>
<!--Menu-->
<jsp:include page="/Share/header.jsp" />
<div class="ProductContainer">
    <div class="Filter">
        <details  class="FilterGroup">
            <summary >GIỚI TÍNH</summary>
            <div class="FilterBody">
                <label class="FilterItem"><input type="checkbox"> NAM </label>
                <label class="FilterItem"><input type="checkbox"> NỮ  </label>
            </div>
        </details>
        <details  class="FilterGroup">
            <summary>DANH MỤC SẢN PHẨM</summary>
            <div class="FilterBody">
                <label class="FilterItem"><input type="checkbox"> QUẦN ÁO</label>
                <label class="FilterItem"><input type="checkbox">  MÁY TẬP </label>
                <label class="FilterItem"><input type="checkbox"> THỰC PHẨM BỔ SUNG</label>
                <label class="FilterItem"><input type="checkbox"> PHỤ KIỆN </label>
                <label class="FilterItem"><input type="checkbox"> GIÀY DÉP </label>
            </div>
        </details>
        <details  class="FilterGroup">
            <summary>MÀU SẮC</summary>
            <div class="FilterBody">
                <label class="FilterItem ColorBlack"><input type="checkbox"> ĐEN </label>
                <label class="FilterItem ColorWhite"><input type="checkbox"> TRẮNG</label>
                <label class="FilterItem ColorRed"><input type="checkbox"> ĐỎ</label>
                <label class="FilterItem ColorBlue"><input type="checkbox"> XANH DƯƠNG</label>
                <label class="FilterItem ColorYellow"><input type="checkbox"> VÀNG</label>
                <label class="FilterItem ColorGreen"><input type="checkbox"> XANH LÁ</label>
                <label class="FilterItem ColorGray"><input type="checkbox"> XÁM</label>

            </div>
        </details>
        <details  class="FilterGroup">
            <summary>THƯƠNG HIỆU</summary>
            <div class="FilterBody">
                <label class="FilterItem"><input type="checkbox">ADIDAS </label>
                <label class="FilterItem"><input type="checkbox">NIKE </label>
                <label class="FilterItem"><input type="checkbox">HOKA </label>
                <label class="FilterItem"><input type="checkbox">COLUMBIA </label>
                <label class="FilterItem"><input type="checkbox">SPIRIT </label>
            </div>
        </details>
        <details  class="FilterGroup">
            <summary>KÍCH CỠ</summary>
            <div class="FilterBody">
                <label class="FilterItem"><input type="checkbox">S</label>
                <label class="FilterItem"><input type="checkbox">M </label>
                <label class="FilterItem"><input type="checkbox">L</label>
                <label class="FilterItem"><input type="checkbox">XL</label>
                <label class="FilterItem"><input type="checkbox">XXL</label>
                <label class="FilterItem"><input type="checkbox">XXXL</label>
            </div>
        </details>
    </div>
    <div class="ListProductForFilter">
        <div class="SearchboxForProduct">
            <div class="SearchInPage">
                <input type="text" placeholder="Tìm kiếm sản phẩm trong trang này">
                <i class="fa fa-search"></i>
            </div>
        </div>
        <div class="HeaderListProductForFilter">
            <div Class="CountListProductForFilter">XXXX sản phẩm</div>
            <button class="SortListProductForFilter">
                <span><i class="fa-solid fa-sort-down"></i></span>
                Sắp Xếp
            </button>
        </div>
        <div class="bodyListProductForFilter">
            <c:forEach var="p" items="${list}">
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="${p.img}" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName"><a href="Product?id=${p.id}">${p.name}</a> </p>
                        <div class="Rating">
                            <div class="Rating">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-regular fa-star"></i>
                                <span class="ReviewCount">3 đánh giá</span>
                            </div>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">${p.price}</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <button class="LoadMoreBtn">Xem thêm</button>
    </div>
</div>

<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>
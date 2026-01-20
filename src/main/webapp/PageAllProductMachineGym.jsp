<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/StyleForProductCard.css">
</head>
<body>
<jsp:include page="/Share/header.jsp" />

<div class="ProductContainer">
    <aside class="FilterSidebar">
        <div class="FilterHeader">
            <i class="fa-solid fa-filter"></i> BỘ LỌC TÌM KIẾM
        </div>

        <div class="FilterContent">
            <details class="FilterGroup" open>
                <summary>Thương hiệu</summary>
                <div class="FilterBody">
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Thương hiệu 1</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Thương hiệu 2</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Thương hiệu 3</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Thương hiệu 4</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Thương hiệu 5</span></label>
                </div>
            </details>
            <details class="FilterGroup">
                <summary>KÍCH CỠ</summary>
                <div class="FilterBody SizeGrid">
                    <label class="SizeBox"><input type="checkbox"><span>< 50kg</span></label>
                    <label class="SizeBox"><input type="checkbox"><span>> 50kg</span></label>

                </div>
            </details>
        </div>
    </aside>

    <main class="ProductMainArea">
        <div class="ProductToolbar">
            <div class="SearchWrapper">
                <i class="fa fa-search"></i>
                <input type="text" placeholder="Tìm kiếm trong trang...">
            </div>

            <div class="SortWrapper">
                <span class="ResultCount">Hiển thị <b>${list.size()}</b> sản phẩm</span>
                <div class="SelectContainer">
                    <select class="SortSelect">
                        <option value="default">Sắp xếp: Mặc định</option>
                        <option value="price_asc">Giá: Thấp đến Cao</option>
                        <option value="price_desc">Giá: Cao đến Thấp</option>
                    </select>
                    <i class="fa-solid fa-chevron-down"></i>
                </div>
            </div>
        </div>

        <div class="ProductGrid">
            <c:forEach var="p" items="${list}">
                <div class="ProductCard">
                    <div class="ProductImage">
                        <img src="${p.img}" alt="${p.name}">
                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>
                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName"><a href="Product?id=${p.id}">${p.name}</a></p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">${p.price}</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </main>
</div>

<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>
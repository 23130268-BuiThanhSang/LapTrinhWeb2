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
                <summary>GIỚI TÍNH</summary>
                <div class="FilterBody">
                    <label class="CustomCheckbox">
                        <input type="checkbox">
                        <span class="Checkmark"></span>
                        <span class="LabelText">Nam</span>
                    </label>
                    <label class="CustomCheckbox">
                        <input type="checkbox">
                        <span class="Checkmark"></span>
                        <span class="LabelText">Nữ</span>
                    </label>
                </div>
            </details>

            <details class="FilterGroup" open>
                <summary>DANH MỤC</summary>
                <div class="FilterBody">
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Đồ thể thao</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Dụng cụ tập gym</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Phụ kiện</span></label>
                    <label class="CustomCheckbox"><input type="checkbox"><span class="Checkmark"></span><span class="LabelText">Giày</span></label>
                </div>
            </details>

            <details class="FilterGroup" open>
                <summary>MÀU SẮC</summary>
                <div class="FilterBody ColorGrid">
                    <label class="ColorSwatch" title="Đen"><input type="checkbox"><span class="SwatchDot" style="background:#000"></span></label>
                    <label class="ColorSwatch" title="Trắng"><input type="checkbox"><span class="SwatchDot" style="background:#fff; border:1px solid #ddd"></span></label>
                    <label class="ColorSwatch" title="Đỏ"><input type="checkbox"><span class="SwatchDot" style="background:#d0021b"></span></label>
                    <label class="ColorSwatch" title="Xanh Dương"><input type="checkbox"><span class="SwatchDot" style="background:#007bff"></span></label>
                    <label class="ColorSwatch" title="Vàng"><input type="checkbox"><span class="SwatchDot" style="background:#f5a623"></span></label>
                    <label class="ColorSwatch" title="Xanh Lá"><input type="checkbox"><span class="SwatchDot" style="background:#7ed321"></span></label>
                    <label class="ColorSwatch" title="Xám"><input type="checkbox"><span class="SwatchDot" style="background:#9b9b9b"></span></label>
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
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    request.setAttribute("totalPages", 5);
    request.setAttribute("currentPage", 2);
%>
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
        <div class="FilterActions">
            <button type="submit" class="ApplyFilterBtn">
                Áp dụng bộ lọc
            </button>
            <a href="ListProduct" class="ClearFilterBtn">
                Xóa bộ lọc
            </a>
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
                    <label class="SizeBox"><input type="checkbox"><span>S</span></label>
                    <label class="SizeBox"><input type="checkbox"><span>M</span></label>
                    <label class="SizeBox"><input type="checkbox"><span>L</span></label>
                    <label class="SizeBox"><input type="checkbox"><span>XL</span></label>
                    <label class="SizeBox"><input type="checkbox"><span>2XL</span></label>
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
                <span class="ResultCount">Hiển thị <b>${products.size()}</b> sản phẩm</span>
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
            <c:forEach var="p" items="${products}">
                <div class="ProductCard">
                    <div class="ProductImage">
                        <img src="${p.imageUrl}" alt="${p.name}">
                        <c:if test="${ p.discountPercent >0 }">
                            <div class="ProductTag">
                                <div class="Discount">${p.discountPercent}%</div>
                            </div>
                        </c:if>
                    </div>
                    <div class="ProductInfo">
                        <span class="BrandProduct">${p.brandName}</span>
                        <p class="ProductName"><a href="Product?id=${p.id}">${p.name}</a></p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">${p.reviewCount} đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">
                                <fmt:formatNumber value="${p.price}" type="number" groupingUsed="true"/> VNĐ
                            </span>
                            <c:if test="${ p.oldPrice != null }">
                                <span class="OldPrice">
                                    <fmt:formatNumber value="${p.oldPrice}" type="number" groupingUsed="true"/> VNĐ
                                </span>
                            </c:if>
                        </div>

                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="Pagination">
            <c:forEach begin="1" end="${totalPages}" var="i">
                <a href="?page=${i}" class="PageNum${i == currentPage ? ' Active' : ''}">${i}</a>
            </c:forEach>
        </div>
    </main>
</div>

<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
        <form method="get" action="ListProductClothes" id="filterForm" class="FilterContent">
            <!-- GIỚI TÍNH -->
            <details class="FilterGroup" open>
                <summary>GIỚI TÍNH</summary>
                <div class="FilterBody">
                    <label class="CustomRadio">
                        <input type="radio" name="gender" value="Nam" <c:if test="${gender eq 'Nam'}">checked</c:if>>
                        <span class="RadioDot"></span>
                        <span class="LabelText">Nam</span>
                    </label>
                    <label class="CustomRadio">
                        <input type="radio" name="gender" value="Nữ" <c:if test="${gender eq 'Nữ'}">checked</c:if>>
                        <span class="RadioDot"></span>
                        <span class="LabelText">Nữ</span>
                    </label>
                </div>
            </details>

            <!-- MÀU SẮC -->
            <details class="FilterGroup" open>
                <summary>MÀU SẮC</summary>
                <div class="FilterBody ColorGrid">
                    <label class="ColorSwatch" title="Đen">
                        <input type="radio" name="color" value="Đen" <c:if test="${color eq 'Đen'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#000"></span>
                    </label>
                    <label class="ColorSwatch" title="Trắng">
                        <input type="radio" name="color" value="Trắng" <c:if test="${color eq 'Trắng'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#fff; border:1px solid #ddd"></span>
                    </label>
                    <label class="ColorSwatch" title="Đỏ">
                        <input type="radio" name="color" value="Đỏ" <c:if test="${color eq 'Đỏ'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#d0021b"></span>
                    </label>
                    <label class="ColorSwatch" title="Xanh Dương">
                        <input type="radio" name="color" value="Xanh Dương" <c:if test="${color eq 'Xanh Dương'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#007bff"></span>
                    </label>
                    <label class="ColorSwatch" title="Vàng">
                        <input type="radio" name="color" value="Vàng" <c:if test="${color eq 'Vàng'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#f5a623"></span>
                    </label>
                    <label class="ColorSwatch" title="Xanh Lá">
                        <input type="radio" name="color" value="Xanh Lá" <c:if test="${color eq 'Xanh Lá'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#7ed321"></span>
                    </label>
                    <label class="ColorSwatch" title="Xám">
                        <input type="radio" name="color" value="Xám" <c:if test="${color eq 'Xám'}">checked</c:if>>
                        <span class="SwatchDot" style="background:#9b9b9b"></span>
                    </label>
                </div>
            </details>

            <!-- THƯƠNG HIỆU -->
            <details class="FilterGroup" open>
                <summary>Thương hiệu</summary>
                <div class="FilterBody">
                    <c:forEach var="b" items="${brands}">
                        <label class="CustomRadio">
                            <input type="radio"
                                   name="brandId"
                                   value="${b.id}"
                                   <c:if test="${brandId == b.id}">checked</c:if>>
                            <span class="RadioDot"></span>
                            <span class="LabelText">${b.name}</span>
                        </label>
                    </c:forEach>
                </div>

            </details>

            <!-- KÍCH CỠ -->
            <details class="FilterGroup">
                <summary>KÍCH CỠ</summary>
                <div class="FilterBody SizeGrid">
                    <label class="SizeBox">
                        <input type="radio" name="size" value="1" <c:if test="${size == 1}">checked</c:if>>
                        <span>S</span>
                    </label>
                    <label class="SizeBox">
                        <input type="radio" name="size" value="2" <c:if test="${size == 2}">checked</c:if>>
                        <span>M</span>
                    </label>
                    <label class="SizeBox">
                        <input type="radio" name="size" value="3" <c:if test="${size == 3}">checked</c:if>>
                        <span>L</span>
                    </label>
                    <label class="SizeBox">
                        <input type="radio" name="size" value="4" <c:if test="${size == 4}">checked</c:if>>
                        <span>XL</span>
                    </label>
                    <label class="SizeBox">
                        <input type="radio" name="size" value="5" <c:if test="${size == 5}">checked</c:if>>
                        <span>2XL</span>
                    </label>
                </div>
            </details>
            <input type="hidden" name="keyword" value="${keyword}">
        </form>
    </aside>

    <main class="ProductMainArea">
        <div class="ProductToolbar">
            <form method="get" action="ListProductClothes" id="searchForm">
                <div class="SearchWrapper">
                    <i class="fa fa-search"></i>
                    <input type="text" name="keyword"
                           placeholder="Tìm kiếm sản phẩm theo tên..."
                           value="${keyword}">
                </div>

<%--                giữ nguyên bộ lọc khi tìm kiếm--%>
                <input type="hidden" name="gender" value="${gender}">
                <input type="hidden" name="color" value="${color}">
                <input type="hidden" name="brandId" value="${brandId}">
                <input type="hidden" name="size" value="${size}">
            </form>


            <div class="SortWrapper">
                <span class="ResultCount">Hiển thị <b>${products.size()}</b> sản phẩm</span>
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

        <%-- Tạo chuỗi filterParams để giữ filter khi chuyển trang --%>
        <c:set var="filterParams" value="" />
        <c:if test="${not empty gender}">
            <c:set var="filterParams" value="${filterParams}&gender=${gender}" />
        </c:if>
        <c:if test="${not empty color}">
            <c:set var="filterParams" value="${filterParams}&color=${color}" />
        </c:if>
        <c:if test="${not empty brandId}">
            <c:set var="filterParams" value="${filterParams}&brandId=${brandId}" />
        </c:if>
        <c:if test="${not empty size}">
            <c:set var="filterParams" value="${filterParams}&size=${size}" />
        </c:if>
        <div class="Pagination">
            <c:forEach begin="1" end="${totalPages}" var="i">
                <a href="?page=${i}${filterParams}" class="PageNum${i == currentPage ? ' Active' : ''}">${i}</a>
            </c:forEach>
        </div>
    </main>
</div>

<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
<script src="JS/JSForListProduct.js"></script>
</body>
</html>
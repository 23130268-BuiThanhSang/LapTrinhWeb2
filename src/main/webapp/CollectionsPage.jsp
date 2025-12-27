<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="CSS/CollectionsPage.css">
    <link rel="stylesheet" href="CSS/StyleForProductCard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<jsp:include page="/Share/header.jsp" />
<nav class="breadcrumb">
    <a href="#">Trang chủ</a>
    <span class="separator">›</span>
    <a href="#">Bộ sưu tập</a>
    <span class="separator">›</span>
    <a href="#">Hoka - Koshi Tan Tan</a>
</nav>
<div class="MainCollectionBanner">
    <img src="lgImg/ProductSample/1960_740_V_6cbbc97a-5294-49a2-b491-ffc05a29fc32.png"/>
</div>
<div class="LowerPart">
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
                <summary>ƯU ĐÃI</summary>
                <div class="FilterBody">
                    <label class="FilterItem"><input type="checkbox"><10% </label>
                    <label class="FilterItem"><input type="checkbox">10% - 20% </label>
                    <label class="FilterItem"><input type="checkbox">20% - 30% </label>
                    <label class="FilterItem"><input type="checkbox">30% - 40% </label>
                    <label class="FilterItem"><input type="checkbox">>40% </label>
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
            <div class="HeaderListProductForFilter">
                <div Class="CountListProductForFilter">XXXX sản phẩm</div>
                <button class="SortListProductForFilter">
                    <span><i class="fa-solid fa-sort-down"></i></span>
                    Sắp Xếp
                </button>
            </div>
            <div class="bodyListProductForFilter">
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
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
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
                <div class="ProductCard">
                    <!-- ẢNH + TAG -->
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

                    <!-- THÔNG TIN -->
                    <div class="ProductInfo">
                        <span class="BrandProduct">ADIDAS</span>
                        <p class="ProductName">Áo Hoodie Nữ Adidas Future Icons - Cam</p>
                        <div class="Rating">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <span class="ReviewCount">3 đánh giá</span>
                        </div>
                        <div class="Price">
                            <span class="NewPrice">640.000₫</span>
                            <span class="OldPrice">1.600.000₫</span>
                        </div>
                    </div>
                </div>
            </div>
            <button class="LoadMoreBtn">Xem thêm</button>
        </div>
    </div>
</div>
<hr>
<div class="OtherCollections">
    <div class="NewCollection">
        <div class = "SubCategoriesTitleContainer">CÁC BỘ SƯU TẬP KHÁC
        </div>
        <div class="NewCollectionButtonContainer">
            <!--            add link for each image later-->
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_CROCS_Spiderman_Sept_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_DAS_Everyday_Running_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_ON_CLOUD_6_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_ONIX_NEWNESS_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_UA_HALO_RACER_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_CROCS_Spiderman_Sept_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_DAS_Everyday_Running_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_ON_CLOUD_6_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_ONIX_NEWNESS_VN.png"/>
            </a>
            <a class = "NewCollectButton">
                <img src="lgImg/SubCategoriesImage/NewColle/T10_NL_UA_HALO_RACER_VN.png"/>
            </a>
        </div>
    </div>
</div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
<script src="JS/CollectionsPage.js"></script>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/StyleForHotDeal.css">
    <link rel="stylesheet" href="CSS/StyleForProductCard.css">

</head>
<body>
<!--menu cho trang web-->
<jsp:include page="/Share/header.jsp" />
<!--Thanh điều hướng -->
<nav class="breadcrumb">
    <a href="#">Trang chủ</a>
    <span class="separator">›</span>
    <a href="#">Trang Ưu Đãi</a>
</nav>
<!--Banner những sản phẩm ưu đãi -->
<div class="TopHotDealBanner">
    <div class="MainBannerHotDeal">
        <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/HP_SP_BRANDS_VN.jpg?v=1761210534&width=1440" alt="TopHotDeal">
    </div>
    <h2 class="TitleHotDeal">ƯU ĐÃI NỔI BẬT</h2>
    <div class="SubBannerHotDeal">
        <div class="SubBannerHotDealItem">
        <a href="#" class="HotDealCard">
            <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/mb_nike.jpg?v=1761210559&width=550" alt="Nike">
        </a>
        <a href="#" class="HotDealCard">
            <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/mb_das.jpg?v=1761210559&width=550" alt="Nike">
        </a>
        <a href="#" class="HotDealCard">
            <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/mb_ua.jpg?v=1761210559&width=550" alt="Nike">
        </a>
        <a href="#" class="HotDealCard">
            <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/mb_colum.jpg?v=1761210559&width=550" alt="Nike">
        </a>
        <a href="#" class="HotDealCard">
            <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/mb_hoka.jpg?v=1761210559&width=550" alt="Nike">
        </a>
        <a href="#" class="HotDealCard">
            <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/mb_speedo.jpg?v=1761210559&width=550" alt="Nike">
        </a>
        </div>
    </div>
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
            <div class="HeaderListProductForFilter">
                    <div Class="CountListProductForFilter">XXXX sản phẩm</div>
                    <button class="SortListProductForFilter">
                        <span><i class="fa-solid fa-sort-down"></i></span>
                        Sắp Xếp
                    </button>
            </div>
            <div class="bodyListProductForFilter">
                <div class="ProductCard">
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/products/H59282-1.jpg?v=1668067715&width=1600" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="SpecialOffer">ƯU ĐÃI<br>ĐẶC BIỆT</div>
                            <div class="Discount">-60%</div>
                        </div>

                        <div class="BestPrice">GIÁ TỐT NHẤT NĂM</div>
                    </div>

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
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>
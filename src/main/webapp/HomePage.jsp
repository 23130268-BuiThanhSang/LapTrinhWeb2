<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/StyleForProductCard.css">

</head>
<body id = "HomePageBody">
<jsp:include page="/Share/header.jsp" />
<div class="banner">
    <div class="BannerSlides" id="BannerSlides">
        <a href="https://example.com/page1">
            <img src="https://supersports.com.vn/cdn/shop/files/SPEEDO_Hyberboom_1545_500_V.jpg?v=1768450704&width=1920" alt="Banner 1" />
        </a>
        <a href="https://example.com/page2">
            <img src="lgImg/Main_Banner_Image/banner_2.png" alt="Banner 2" />
        </a>
        <a href="https://example.com/page3">
            <img src="lgImg/Main_Banner_Image/banner_3.png" alt="Banner 3" /></a>
        <a href="https://example.com/page4">
            <img src="lgImg/Main_Banner_Image/banner_4.png" alt="Banner 4"/></a>
        <a href="https://example.com/page5">
            <img src="lgImg/Main_Banner_Image/banner_5.png" alt="Banner 5"/></a>
        <a href="https://example.com/page6">
            <img src="lgImg/Main_Banner_Image/banner_6.png" alt="Banner 6"/></a>
    </div>
    <button class="nav-btn prev" id="prevBtn"> << </button>
    <button class="nav-btn next" id="nextBtn"> >> </button>
</div>
<div class="ProductCategories">
    DANH MỤC SẢN PHẨM
    <div class="ProductCategoriesButtonContainer">
        <button class = "ProductCategoriesButton">Dụng Cụ Tập Gym
            <div class="inner-square">
            <img src="lgImg/pngimg.com - gym_equipment_PNG144.png"/>
            </div>
        </button>
        <button class = "ProductCategoriesButton">Đồ Thể Thao
            <div class="inner-square">
            <img src="lgImg/Sports-Wear-PNG-Photos.png"/>
            </div>
        </button>
        <button class = "ProductCategoriesButton">Phụ Kiện
            <div class="inner-square">
            <img src="lgImg/phu-kien-Photoroom.png"/>
            </div>
        </button>
    </div>
</div>

<!-- hiển thị các sản phẩm nổi bât-->
<div class="CategoriesShowcase">
    <div class="Hotdeal">
        <h2 class="HotdealTitle">ƯU ĐÃI SẬP SÀN</h2>
        <div Class="CategoriesShowcaseHotDealSpecial">
            <img src="https://supersports.com.vn/cdn/shop/files/1545_500_V_49b5c59d-4872-436a-a02b-446e8e2ef246.jpg?v=1761230246&width=1920" alt="Hotdeal" class="HotDealSpecial">
        </div>
        <div Class="CategoriesShowcaseHotDealNormal">
                    <img src="lgImg/Hotdeal1.png" alt="hotdeal1"  class="HotDeal1">
                    <img src="https://cdn.shopify.com/s/files/1/0456/5070/6581/files/ua_51d6d1f3-1849-4d99-9994-398d65665c94.jpg?v=1761213065&width=1440" alt="hotdeal2" class="HotDeal2">
        </div>
    </div>
    <div class="HotdealProduct">
        <div class="ProductSection">
            <div class="HeaderListProductTitle">
                <h2 class="ProductDealTitle">
                    ƯU ĐÃI ĐẶC BIỆT
                </h2>
                <button class="SubProductDealButton">
                    XEM TẤT CẢ
                </button>
            </div>
            <div class="ProductSpecialContainer">
                <!-- đây chính là sản phẩm -->
                <div class="ProductCard">
                    <div class="ProductImage">
                        <img src="https://supersports.com.vn/cdn/shop/files/1376781-464-1.jpg?v=1721123496&width=1000" alt="Giày HOKA">

                        <div class="ProductTag">
                            <div class="ProductTag LeftTag">
                                <div class="NewBadge">NEW</div>
                            </div>
                            <div class="Discount">-60%</div>
                        </div>
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
        </div>

    </div>
</div>
  
  
<div class="SubCategories">

    <div class="SpecCollection">
        <div class = "SubCategoriesTitleContainer">BỘ SƯU TẬP NỔI BẬT
            <a class = "SubCategoriesPageLinkButton">XEM TẤT CẢ</a>
        </div>
        <div class="SpecCollectionButtonContainer">
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_c118c566-d23b-4e79-ab10-3385067f8b81.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_V_6a628540-a564-499e-9497-813349610764.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_V_90572b33-ea43-47f3-8304-223dd102e377.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_VN.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_c118c566-d23b-4e79-ab10-3385067f8b81.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_V_6a628540-a564-499e-9497-813349610764.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_V_90572b33-ea43-47f3-8304-223dd102e377.png"/></a>
            <a class = "SpecCollectButton">
                <img src="lgImg/SubCategoriesImage/SpeColle/581_574_VN.png"/></a>
        </div>
    </div>
    <hr>
    <div class="SpecBrand">
        <div class = SubCategoriesTitleContainer>THƯƠNG HIỆU NỔI BẬT
        </div>
        <div class = "SpecBrandButtonContainer">
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/ASICS.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/brand.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/brand1.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_HOKA_34d18cdd-46df-43a3-87a6-4a8a46ff6cfd.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_TEVA.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_UA_971a481e-3d35-4376-b5a3-332e2d34165d.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/PUMA_a7d5855f-754a-4f63-a630-fbea0a3822c2.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_COLUM_0a5dd1e4-d410-4efb-b381-fda52ccb6e68.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_SPEEDO_ece13004-e7a2-4c37-bf0e-16302121e99a.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_NIKE_c3a940f1-9d42-47a2-bec3-04a47aa62e04.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/SP_BR_CROCS_b77b8613-50d1-43b5-a7fa-0b46546a9734.png">
            </a>
            <a class = "SpecBrandButton">
                <img src="lgImg/SubCategoriesImage/Brand/30_THUONG_HIEU.png">
            </a>
        </div>
    </div>
    <hr>
    <div class="Sports">
        <div class = "SubCategoriesTitleContainer">MÔN THỂ THAO NỔI BẬT
            <a class = "SubCategoriesPageLinkButton">XEM TẤT CẢ</a>
        </div>
        <div class = "SportsButtonContainer">
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT__Running_VN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_Basketball_VN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_Fitness_VN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_Football_VN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_GOLF_EN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_OUTDOOR_VN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_Swimming_VN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/HP_SPORT_TENNIS_EN.png"/></a>
            <a class = "SportsButton">
                <img src="lgImg/SubCategoriesImage/Sports/SP_YOGA_FITNESS_VN.png"/></a>
        </div>
    </div>
    <hr>
</div>

<jsp:include page="/Share/footer.jsp" />

<script src="JS/Notification.js"></script>
<script src="JS/Script.js"></script>
</body>
</html>
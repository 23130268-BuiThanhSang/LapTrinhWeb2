<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/ProductMainPage.css">
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<jsp:include page="/Share/header.jsp" />
<nav class="breadcrumb">
    <a href="#">Trang chủ</a>
    <span class="separator">›</span>
    <a href="#">Trang sản phẩm</a>
    <span class="separator">›</span>
    <a href="#">Giày</a>
    <span class="separator">›</span>
    <a href="#">Giày nam</a>
    <span class="separator">›</span>
    <a href="#">Giày Chạy Bộ Nam Nike Pegasus 41</a>
</nav>
<div class = "UpperPart">
    <div class="ProductPreview">
        <div class="MainImageContainer">
        <img src="lgImg/ProductSample/HQ1717-400-1.png" class="MainImage" alt="Main shoe image">
        </div>
        <div class="ImageSlider">
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
            <button class="ThumbButton"><img src="${product.img}" alt=""></button>
        </div>
    </div>
    <div class="ProductInfo">
        <div class = "HighlightBox">
        <p class="ProductBrand">NIKE</p>

        <h1 class="ProductName">${product.name}</h1>
        <div class="Rating">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <span class="ReviewCount">2 đánh giá</span>
        </div>
        <p class="ProductPrice">${product.price}</p>
        </div>
        <div class="ProductColor">
            <p class="SectionTitle">Màu Sắc: <span>XANH DƯƠNG (RACBLU/SAI)</span></p>
            <div class="ColorOptions">
                <button class="ColorButton"><img ></button>
                <button class="ColorButton"><img ></button>
                <button class="ColorButton"><img ></button>
            </div>
        </div>

        <div class="ProductSize">
            <p class="SectionTitle">Kích Thước</p>
            <div class="SizeOptions">
                <button class="SizeButton">UK 3.5</button>
                <button class="SizeButton">UK 4</button>
                <button class="SizeButton">UK 4.5</button>
                <button class="SizeButton">UK 5</button>
                <button class="SizeButton">UK 5.5</button>
                <button class="SizeButton">UK 6</button>
                <button class="SizeButton">UK 6.5</button>
            </div>
        </div>

        <div class="ProductLinks">
            <a href="#">Hướng dẫn chọn kích thước</a><br>
            <a href="#">Kiểm tra tồn kho tại cửa hàng</a>
        </div>
        <div class="PurchaseSection">
            <div class = "HighlightBox">
            <div class="QuantityContainer">
                <label for="quantity">Số lượng</label>
                <div class="QuantityControl">
                    <button class="QtyBtn">−</button>
                    <input type="number" id="quantity" value="1" min="1">
                    <button class="QtyBtn">+</button>
                </div>
            </div>

            <div class="ActionButtons">
                <button class="BuyNow">MUA NGAY</button>
                <button class="AddToCart">THÊM VÀO GIỎ HÀNG</button>
            </div>
            </div>
<!--            <div class="ServiceList">-->
<!--                <p>Đăng ký nhận voucher 150K <a href="#">Đăng ký ngay</a></p>-->
<!--                <p>Miễn phí giao hàng đơn từ 699K <a href="#">Xem chi tiết</a></p>-->
<!--                <p>Đổi trả miễn phí đến 30 ngày <a href="#">Xem chi tiết</a></p>-->
<!--                <p>Trả góp 0% lãi suất từ 3.000.000 VNĐ <a href="#">Xem chi tiết</a></p>-->
<!--                <p>Thanh toán trực tuyến nhanh chóng và an toàn.</p>-->
<!--                <p>Sản phẩm chính hãng 100%.</p>-->
<!--            </div>-->

        </div>
    </div>

</div>

<div class = "LowerPart">
    <div class = "LowerHighlightBox">
    <div class="TabContainer">
        <div class="TabButtons">
            <button class="TabButton active">Thông tin sản phẩm</button>
            <button class="TabButton">Quy định đổi trả</button>
            <button class="TabButton">Hướng dẫn chăm sóc</button>
        </div>

        <div class="TabWindow">
            <div class="TabContents">
                <p class="TabContent active">
                    Thông tin cho vào đây.
                </p>
                <p class="TabContent">Nội dung quy định đổi trả ở đây.</p>
                <p class="TabContent">Nội dung hướng dẫn chăm sóc ở đây.</p>
            </div>
        </div>
    </div>
    </div>
</div>
<div class="RatingSection">
    <h3>ĐÁNH GIÁ CỦA BẢN THÂN</h3>
    <div class = "HighlightBox">
        <div class = "Self_review">
            <select class="self_rating" id="self_rating">
                <option value="5">5 Sao</option>
                <option value="4">4 Sao</option>
                <option value="3">3 Sao</option>
                <option value="2">2 Sao</option>
                <option value="1">1 Sao</option>
            </select>
            <textarea class = "review_input" placeholder="Nhập đánh giá..."></textarea>
            <button class = "review_complete_button">Hoàn Thành</button>
        </div>
    </div>
    <h3>ĐÁNH GIÁ CỦA MỌI NGƯỜI</h3>

    <div class="RatingSummary">
        <div class="AverageRating">
            <span class="Score" id="avgScore">5</span>
            <span>trên 5</span>
        </div>

        <select class="StarFilter" id="starFilter">
            <option value="all">Tất cả</option>
            <option value="5">5 Sao</option>
            <option value="4">4 Sao</option>
            <option value="3">3 Sao</option>
            <option value="2">2 Sao</option>
            <option value="1">1 Sao</option>
        </select>
    </div>

    <div class="Stars" id="avgStars">
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
        <i class="fa-solid fa-star"></i>
    </div>

    <div class="ReviewList" id="reviewList">
        <!-- Review 1 -->
        <div class="ReviewItem">
            <div class="Reviewer">
                <div class="Avatar"></div> <span class="reviewUser">m**t</span>
                <div class="Stars reviewStars">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
                <span class="ReviewDate">2024-10-21 00:11</span>
            </div>
            <div class="ReviewContent">
                <p class="ReviewText">
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                    *Khen sản phẩm *Khen sản phẩm *Khen sản phẩm
                </p>
            </div>
        </div>

        <!-- Review 2 -->
        <div class="ReviewItem">
            <div class="Reviewer">
                <div class="Avatar"></div><span class="reviewUser">k**4</span>
                <div class="Stars reviewStars">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                </div>
                <span class="ReviewDate">2025-06-12 12:15</span>
            </div>
            <div class="ReviewContent">
                <p class="ReviewText">
                    *Khen sản phẩm
                    *Khen sản phẩm
                    *Khen sản phẩm
                    *Khen sản phẩm
                </p>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/ProductMainPage.js"></script>
<script src="JS/Notification.js"></script>
</body>
</html>
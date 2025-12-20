<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageUI.css">
</head>
<body>
<div class="MainUI">
    <jsp:include page="/Share/admin_leftbar.jsp" />
    <div class = "manageUI">
        <div class = "HighlightBox">
            <div class="banner-editor">
                <label class="BoxTitle">Thêm Banner bằng:</label>
                <select id="pageType">
                    <option value="baseURL">URL cụ thể</option>
                    <option value="brand">Brand</option>
                    <option value="collection">Collection</option>
                    <option value="sports">Sports</option>
                    <option value="hotdeal">HotDeal</option>
                </select>

                <div class="banner-box">
                    <input class="banner-text-left" placeholder="Nhập URL của banner, để trống nếu dùng main image">
                    <div class="divider"></div>
                    <input class="banner-text-right" placeholder="Nhập url hoặc id của brand/colletion/..">
                    <div class="divider"></div>
                    <input class="banner-text-order" placeholder="1">
                    <button class="add-banner-id-btn">Thêm</button>
                </div>
            </div>
        </div>
        <div class ="HighlightBox">
            <div class="search-section">
                <div class="search-row">
                    <label for="searchType">Tra cứu bằng:</label>
                    <select id="searchType">
                        <option value="id">ID</option>
                        <option value="name">Name</option>
                    </select>
                </div>
                <div class="search-row input-row">
                    <input
                            type="text"
                            id="searchInput"
                            placeholder="Enter search value..."
                    >
                    <button id="searchButton">Dò Database</button>
                </div>
                <div id="searchResult" class="result-box"></div>
            </div>
        </div>
        <div class = "HighlightBox">
            <div class="all-displaying-banner">
                <label class="BoxTitle">Banner hiện tại:</label>

                <div class="banner-row">
                    <label class="banner-label-left">Hiển thị theo dạng: URL Hình ảnh | URL Trang đích | Mức ưu tiên hiển thị</label>
                </div>
                <div class = "Banner-container">
                    <div class="banner-box">
                        <span class="banner-text-left">lgImg/331.png</span>
                        <div class="divider"></div>
                        <span class="banner-text-right">https://example.com/page1</span>
                        <div class="divider"></div>
                        <span class="banner-text-order">1</span>
                        <button class="remove-banner-btn">Remove</button>
                    </div>
                    <div class="banner-box">
                        <span class="banner-text-left">lgImg/images.jpeg</span>
                        <div class="divider"></div>
                        <span class="banner-text-right">https://example.com/page1</span>
                        <div class="divider"></div>
                        <span class="banner-text-order">2</span>
                        <button class="remove-banner-btn">Remove</button>
                    </div>
                    <div class="banner-box">
                        <span class="banner-text-left">lgImg/vua-gym-black-friday.png</span>
                        <div class="divider"></div>
                        <span class="banner-text-right">https://example.com/page1</span>
                        <div class="divider"></div>
                        <span class="banner-text-order">2</span>
                        <button class="remove-banner-btn">Remove</button>
                    </div>
                    <div class="banner-box">
                        <span class="banner-text-left">lgImg/images%20(1).jpeg</span>
                        <div class="divider"></div>
                        <span class="banner-text-right">https://example.com/page1</span>
                        <div class="divider"></div>
                        <span class="banner-text-order">3</span>
                        <button class="remove-banner-btn">Remove</button>
                    </div>
                    <div class="banner-box">
                        <span class="banner-text-left">lgImg/images%20(1).jpeg</span>
                        <div class="divider"></div>
                        <span class="banner-text-right">https://example.com/page1</span>
                        <div class="divider"></div>
                        <span class="banner-text-order">3</span>
                        <button class="remove-banner-btn">Remove</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>


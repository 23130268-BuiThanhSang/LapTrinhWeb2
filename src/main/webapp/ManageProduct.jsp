<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageProduct.css">
</head>
<body>
<div class="MainUI">
    <div class="AccountLeft">
        <div class="AvatarAccount">
            <img src="lgImg/avt.png" class="avtr">
            <div class="AccountName">
                <div class="nameAdmin">Admin</div>
                <div class="stk">Quản trị viên</div>
            </div>
        </div>
        <div class="AccountLeftOption">
            <a href="manageUser.jsp" class="OptionIcon">
                <i class="fa-solid fa-user"></i>
                <div class="NameOption">Quản lí người dùng</div>
            </a>
            <a href="ManageProduct.html" class="NameOptionBold">
                <i class="fa-solid fa-box-open"></i>
                <div class="NameOptionBoldText">Quản lí sản phẩm</div>
            </a>
            <a href="manageOrder.jsp" class="OptionIcon">
                <i class="fa-solid fa-box"></i>
                <div class="NameOption">Quản lí đơn hàng</div>
            </a>
            <a href="manageUI.jsp" class="OptionIcon">
                <i class="fa-solid fa-eye"></i>
                <div class="NameOption">Quản lí giao diện</div>
            </a>
            <a href="manageAnoun.jsp" class="OptionIcon">
                <i class="fa-solid fa-bullhorn"></i>
                <div class="NameOption">Quản lí thông báo</div>
            </a>
            <div class = "button_container">
                <a href="login.jsp" class="sgoutAdmin">Đăng xuất</a>
            </div>
        </div>
    </div>
    <div class="MainManagerForProduct">
        <div class="TabButtons">
            <button id="btnAddProduct" class="TabButton">Thêm sản phẩm</button>
            <button id="btnAddGroup" class="TabButton">Thêm nhóm sản phẩm</button>
            <button id="btnSearchProduct" class="TabButton">Tìm kiếm sản phẩm</button>
        </div>

        <!-- ===================== ADD PRODUCT SECTION ===================== -->
        <div id="AddProductSection" class="AddProductSection">
            <div class="HeaderForManageProduct">Thêm Sản Phẩm Mới</div>

            <form class="AddProductForm">
                <div class="FormRow">
                    <label>Tên sản phẩm:</label>
                    <input type="text" name="product_name">
                </div>

                <div class="FormRow">
                    <label>Phân loại:</label>
                    <input type="text" name="category">
                </div>

                <div class="FormRow">
                    <label>Giá bán:</label>
                    <input type="number" name="price">
                </div>

                <div class="FormRow">
                    <label>Số lượng:</label>
                    <input type="number" name="quantity">
                </div>

                <div class="FormRow">
                    <label>Ngày nhập kho:</label>
                    <input type="date" name="import_date">
                </div>

                <div class="FormRow">
                    <label>Hạn sử dụng:</label>
                    <input type="date" name="expire_date">
                </div>

                <button type="submit" class="SubmitAddProduct">Thêm sản phẩm</button>

            </form>
        </div>
        <!-- ===================== ADD PRODUCT GROUP SECTION ===================== -->
        <div id="AddGroupSection" class="AddGroupSection">

            <div class="HeaderForManageProduct">Thêm Nhóm Sản Phẩm</div>

            <form class="AddGroupForm">

                <!-- Group type -->
                <div class="FormRow">
                    <label>Loại nhóm:</label>
                    <select name="group_type">
                        <option value="thuong_hieu">Thương Hiệu</option>
                        <option value="bo_suu_tap">Bộ Sưu Tập</option>
                        <option value="mon_the_thao">Môn Thể Thao</option>
                        <option value="uu_dai">Ưu Đãi</option>
                    </select>
                </div>

                <!-- Group name -->
                <div class="FormRow">
                    <label>Tên nhóm:</label>
                    <input type="text" name="group_name" placeholder="Nhập tên nhóm">
                </div>

                <!-- Thumbnail URL -->
                <div class="FormRow">
                    <label>Thumbnail URL:</label>
                    <input type="text" name="thumbnail_url" placeholder="https://...">
                </div>

                <!-- Image URL -->
                <div class="FormRow">
                    <label>Image URL:</label>
                    <input type="text" name="image_url" placeholder="https://...">
                </div>

                <!-- Display order -->
                <div class="FormRow">
                    <label>Thứ tự hiển thị:</label>
                    <input type="number" name="display_order" min="1">
                </div>

                <button type="submit" class="SubmitAddProduct">
                    Thêm nhóm
                </button>

            </form>
        </div>

        <!-- ===================== SEARCH / VIEW PRODUCT SECTION ===================== -->
        <div id="SearchProductSection" class="SearchProductSection">

            <div class="HeaderForManageProduct">Tìm Kiếm & Quản Lý Sản Phẩm</div>

            <!-- Search Controls -->
            <div class="SearchControls">

                <!-- Search text -->
                <input type="text" class="SearchInput" placeholder="Nhập từ khóa..." name="search_text">

                <!-- Filter: search by -->
                <select class="SearchFilter" name="search_by">
                    <option value="name">Tên sản phẩm</option>
                    <option value="id">Mã sản phẩm</option>
                    <option value="variant_id">Variant ID</option>
                </select>

                <!-- Filter: categories -->
                <select class="CategoryFilter" name="category_filter">
                    <option value="">Tất cả</option>
                    <option value="Đồ thể thao">Đồ thể thao</option>
                    <option value="Công sở">Máy Gym</option>
                    <option value="Đồ nam">Thực phẩm chức năng</option>
                    <option value="Đồ nữ">Phụ kiện thể thao</option>
                </select>

                <!-- Filter: gender -->
                <select class="GenderFilter" name="gender_filter">
                    <option value="">Giới tính: Tất cả</option>
                    <option value="nam">Nam</option>
                    <option value="nu">Nữ</option>
                </select>

                <!-- Filter: price range -->
                <select class="PriceFilter" name="price_filter">
                    <option value="">Khoảng giá</option>
                    <option value="0-200k">0 - 200k</option>
                    <option value="200k-500k">200k - 500k</option>
                    <option value="500k-1000k">500k - 1tr</option>
                    <option value="500k-1000k">> 1tr</option>
                </select>

                <button class="SearchButton">Tìm kiếm</button>
            </div>

            <!-- Results table -->
            <table class="TableProductManage">
                <thead>
                <tr>
                    <th>Mã SP</th>
                    <th>Variant</th>
                    <th>Tên</th>
                    <th>Phân loại</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Ngày nhập</th>
                    <th>Hạn SD</th>
                    <th>Trạng thái</th>
                    <th>Hành động</th>
                </tr>
                </thead>

                <tbody>
                <!-- Backend will generate rows here -->
                <tr>
                    <td>101</td>
                    <td>VR001</td>
                    <td>Áo ADIDAS</td>
                    <td>Đồ thể thao</td>
                    <td>200.000đ</td>
                    <td>50</td>
                    <td>23/2/2023</td>
                    <td>Không</td>
                    <td>Hiển thị</td>
                    <td>
                        <button class="ButtonEditProduct">Sửa</button>
                        <button class="ButtonDeleteProduct">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>101</td>
                    <td>VR001</td>
                    <td>Áo ADIDAS</td>
                    <td>Đồ thể thao</td>
                    <td>200.000đ</td>
                    <td>50</td>
                    <td>23/2/2023</td>
                    <td>Không</td>
                    <td>Hiển thị</td>
                    <td>
                        <button class="ButtonEditProduct">Sửa</button>
                        <button class="ButtonDeleteProduct">Xóa</button>
                    </td>
                </tr>
                <tr>
                    <td>101</td>
                    <td>VR001</td>
                    <td>Áo ADIDAS</td>
                    <td>Đồ thể thao</td>
                    <td>200.000đ</td>
                    <td>50</td>
                    <td>23/2/2023</td>
                    <td>Không</td>
                    <td>Hiển thị</td>
                    <td>
                        <button class="ButtonEditProduct">Sửa</button>
                        <button class="ButtonDeleteProduct">Xóa</button>
                    </td>
                </tr>

                </tbody>
            </table>

        </div>

    </div>
</div>
<script src="JS/manageProductTabSw.js"></script>
</body>
</html>


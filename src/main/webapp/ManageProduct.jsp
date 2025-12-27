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
    <jsp:include page="/Share/admin_leftbar.jsp" />
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

                <div class="FormRow">
                    <label>Thương hiệu <span class="required">*</span>:</label>
                    <div class="RadioContainer">
                        <label><input type="radio" name="brand" value="Nike" required> Nike</label>
                        <label><input type="radio" name="brand" value="Adidas" required> Adidas</label>
                        <label><input type="radio" name="brand" value="Puma" required> Puma</label>
                        <!-- Add more brands if needed -->
                    </div>
                </div>

                <div class="FormRow">
                    <label>Bộ Sưu tập:</label>
                    <div class="CheckboxContainer">
                        <label><input type="checkbox" name="collection" value="Summer"> Summer</label>
                        <label><input type="checkbox" name="collection" value="Winter"> Winter</label>
                        <!-- Add more collections if needed -->
                    </div>
                </div>

                <div class="FormRow">
                    <label>Môn thể thao:</label>
                    <div class="CheckboxContainer">
                        <label><input type="checkbox" name="sport" value="Football"> Football</label>
                        <label><input type="checkbox" name="sport" value="Yoga"> Yoga</label>
                        <!-- Add more sports if needed -->
                    </div>
                </div>

                <div class="FormRow">
                    <label>Ưu đãi:</label>
                    <div class="CheckboxContainer">
                        <label><input type="checkbox" name="hotdeal" value="Yes"> Có</label>
                    </div>
                </div>

                <div class="FormRow">
                    <label>Giới tính:</label>
                    <div class="RadioContainer">
                        <label><input type="radio" name="gender" value="Nam"> Nam</label>
                        <label><input type="radio" name="gender" value="Nữ"> Nữ</label>
                        <!-- Not required, so users can skip -->
                    </div>
                </div>

                <button type="submit" class="SubmitAddProduct">Thêm sản phẩm</button>
            </form>
        </div>
        <!-- ===================== ADD PRODUCT GROUP SECTION ===================== -->
        <div id="AddGroupSection" class="AddGroupSection">

            <div class="HeaderForManageProduct">Thêm Nhóm Sản Phẩm</div>

            <form class="AddGroupForm"
                  action="servlet_addProductGroup"
                  method="post">

                <!-- Group type -->
                <div class="FormRow">
                    <label>Loại nhóm:</label>
                    <select name="group_type" required>
                        <option value="thuong_hieu">Thương Hiệu</option>
                        <option value="bo_suu_tap">Bộ Sưu Tập</option>
                        <option value="mon_the_thao">Môn Thể Thao</option>
                        <option value="uu_dai">Ưu Đãi</option>
                    </select>
                </div>

                <!-- Group name -->
                <div class="FormRow">
                    <label>Tên nhóm:</label>
                    <input type="text"
                           name="group_name"
                           placeholder="Nhập tên nhóm"
                           required>
                </div>

                <!-- Thumbnail URL -->
                <div class="FormRow">
                    <label>Thumbnail URL:</label>
                    <input type="text"
                           name="thumbnail_url"
                           placeholder="https://...">
                </div>

                <!-- Image URL -->
                <div class="FormRow">
                    <label>Image URL:</label>
                    <input type="text"
                           name="image_url"
                           placeholder="https://...">
                </div>

                <!-- Display order -->
                <div class="FormRow">
                    <label>Thứ tự hiển thị:</label>
                    <input type="number"
                           name="display_order"
                           min="1"
                           value="1">
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


<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quản lý sản phẩm</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageProduct.css">
</head>

<body data-default-tab="${defaultTab}">
<div class="MainUI">

    <jsp:include page="/Share/admin_leftbar.jsp"/>

    <div class="MainManagerForProduct">

        <!-- ===================== TAB BUTTONS ===================== -->
        <div class="TabButtons">
            <button id="btnAddProduct"
                    class="TabButton ${defaultTab == 'ADD_PRODUCT' ? 'activeTab' : ''}">
                Thêm sản phẩm
            </button>
            <button id="btnAddGroup"
                    class="TabButton ${defaultTab == 'ADD_GROUP' ? 'activeTab' : ''}">
                Thêm nhóm sản phẩm
            </button>
            <button id="btnSearchProduct"
                    class="TabButton ${defaultTab == 'SEARCH' || defaultTab == null ? 'activeTab' : ''}">
                Tìm kiếm sản phẩm
            </button>
        </div>
        <!-- ===================== ADD PRODUCT ===================== -->
        <div id="AddProductSection"
             class="AddProductSection"
             style="${defaultTab == 'ADD_PRODUCT' ? 'display:block' : 'display:none'}">
        <div class="HeaderForManageProduct">Thêm Sản Phẩm Mới</div>
            <form class="AddProductForm"
                  action="addProduct"
                  method="post"
                  enctype="multipart/form-data">

            <div class="FormRow">
                    <label>Tên sản phẩm:</label>
                    <input type="text" name="product_name">
                </div>
                <div class="FormRow">
                    <label>Phân loại:</label>
                    <select name="category" required>
                        <option value="1">Dụng cụ gym</option>
                        <option value="2">Phụ kiện</option>
                        <option value="3">Đồ</option>
                        <option value="4" selected>Giày</option>
                    </select>
                </div>
                <div class="FormRow">
                    <label>Thông tin sản phẩm:</label>
                    <textarea name="product_info" rows="4"></textarea>
                </div>
                <div class="FormRow">
                    <label>Hướng dẫn bảo quản:</label>
                    <textarea name="product_care_instruction" rows="4"></textarea>
                </div>
                <!-- Brand -->
                <div class="FormRow">
                    <label>Thương hiệu <span class="required">*</span>:</label>
                    <div class="RadioContainer">
                        <c:forEach var="brand" items="${brandList}">
                            <label>
                                <input type="radio"
                                       name="brand_id"
                                       value="${brand.id}"
                                       required>
                                    ${brand.name}
                            </label>
                        </c:forEach>
                    </div>
                </div>
                <!-- Collection -->
                <div class="FormRow">
                    <label>Bộ sưu tập:</label>
                    <div class="CheckboxContainer">
                        <c:forEach var="collection" items="${collectionList}">
                            <label>
                                <input type="radio"
                                       name="collection_ids"
                                       value="${collection.id}">
                                    ${collection.name}
                            </label>
                        </c:forEach>
                    </div>
                </div>
                <!-- Sport -->
                <div class="FormRow">
                    <label>Môn thể thao:</label>
                    <div class="CheckboxContainer">
                        <c:forEach var="sport" items="${sportList}">
                            <label>
                                <input type="radio"
                                       name="sport_ids"
                                       value="${sport.id}">
                                    ${sport.name}
                            </label>
                        </c:forEach>
                    </div>
                </div>
                <!-- Gender -->
                <div class="FormRow">
                    <label>Giới tính:</label>
                    <div class="CheckboxContainer">
                        <label><input type="radio" name="genders" value="nam"> Nam</label>
                        <label><input type="radio" name="genders" value="nu"> Nữ</label>
                        <label><input type="radio" name="genders" value="unisex"> Khác</label>
                    </div>
                </div>
                <div class="FormRow">
                    <label>Thông tin trả hàng:</label>
                    <textarea name="product_return_info" rows="4"></textarea>
                </div>
                <!-- ================= VARIANTS SECTION ================= -->
                <div class="VariantSection">

                    <div class="VariantHeader">
                        <span>Biến thể sản phẩm</span>
                    </div>

                    <div id="VariantContainer">
                        <!-- JS will insert variant cards here -->
                    </div>

                    <button type="button"
                            id="btnAddVariant"
                            class="AddVariantButton">
                        + Thêm biến thể
                    </button>
                </div>

                <button type="submit" class="SubmitAddProduct">
                    Thêm sản phẩm
                </button>

            </form>
        </div>

        <!-- ===================== ADD GROUP ===================== -->
        <div id="AddGroupSection"
             class="AddGroupSection"
             style="${defaultTab == 'ADD_GROUP' ? 'display:block' : 'display:none'}">


        <div class="HeaderForManageProduct">Thêm Nhóm Sản Phẩm</div>

            <form class="AddGroupForm"
                  action="servlet_addProductGroup"
                  method="post">

                <div class="FormRow">
                    <label>Loại nhóm:</label>
                    <select name="group_type" required>
                        <option value="thuong_hieu">Thương hiệu</option>
                        <option value="bo_suu_tap">Bộ sưu tập</option>
                        <option value="mon_the_thao">Môn thể thao</option>
                        <option value="uu_dai">Ưu đãi</option>
                    </select>
                </div>

                <div class="FormRow">
                    <label>Tên nhóm:</label>
                    <input type="text" name="group_name" required>
                </div>

                <div class="FormRow">
                    <label>Thumbnail URL:</label>
                    <input type="text" name="thumbnail_url">
                </div>

                <div class="FormRow">
                    <label>Image URL:</label>
                    <input type="text" name="image_url">
                </div>

                <div class="FormRow">
                    <label>Thứ tự hiển thị:</label>
                    <input type="number" name="display_order" min="1" value="1">
                </div>

                <button type="submit" class="SubmitAddProduct">
                    Thêm nhóm
                </button>

            </form>
        </div>

        <!-- ===================== SEARCH ===================== -->
        <div id="SearchProductSection"
             class="SearchProductSection"
             style="${defaultTab == 'SEARCH' || defaultTab == null ? 'display:block' : 'display:none'}">


        <div class="HeaderForManageProduct">Tìm Kiếm & Quản Lý Sản Phẩm</div>

            <div class="SearchControls">
                <input type="text" class="SearchInput" placeholder="Nhập từ khóa...">

                <select class="SearchFilter">
                    <option value="name">Tên sản phẩm</option>
                    <option value="id">Mã sản phẩm</option>
                    <option value="variant_id">Variant ID</option>
                </select>

                <button class="SearchButton">Tìm kiếm</button>
            </div>

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
                <!-- backend render here -->
                </tbody>
            </table>

        </div>

    </div>
</div>

<script src="JS/manageProductTabSw.js"></script>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<jsp:include page="/Share/header.jsp" />
<div class="SupportCustomer">
    <h2 id="SupportHeader">Hỗ Trợ Khách Hàng</h2>
    <div class="SupportGroup">
        <div class="SupportBox">
            <div class="SupportTitle">Hướng dẫn sử dụng</div>
            <div class="SupportDiv">
                <div class="SupportGuide">Sau khi đăng nhập tài khoản, người dùng có thể lựa chọn các sản phẩm ưng ý thông qua đề xuất từ trang chủ hoặc tìm kiếm để thêm vào giỏ hàng hoặc đặt hàng ngay, người dùng cần đặt địa chỉ cụ thể để hỗ trợ giao hàng, web có hỗ trợ Vouchers để giảm chi phí đơn hàng nếu thỏa điều kiện nhất định. Người dùng có thể lựa chọn phương thức thanh toán bằng tiền mặt hoặc thẻ ngân hàng trong khi xác nhận đặt hàng. Sau khi nhận đơn hàng có thể xem lại thông tin sản phẩm, đưa ra đánh giá hoặc đổi trả nếu đơn hàng không vừa ý.</div>
            </div>
        </div>
        <div class="SupportBox">
            <div class="SupportTitle">Chính sách bảo hành</div>
            <div class="SupportDiv">
                <div class="SupportGuide">Được áp dụng với các sản phẩm chính hãng được đổi trả và bảo hành trong vòng 6-12 tháng nếu gặp sự cố hoặc trục trặc không mong muốn. Người dùng có thể gửi mô tả, hình ảnh, video để cung cấp thông tin cho việc đổi trả và cần đảm bảo sản phẩm khi đổi trả giữ nguyên trạng thái ban đầu, còn tem, không hư hỏng, sửa chữa trái phép. Nếu đơn hàng khi đổi trả không giữ đúng trạng thái ban đầu hoặc đã qua sử dụng thì yêu cầu đổi trả sẽ không được chấp nhận. Người dùng cần giữ phiếu bảo hành khi nhận đơn hàng để hỗ trợ cho việc đổi trả và bảo hành nếu cần thiết.</div>
            </div>
        </div>
        <div class="SupportBox">
            <div class="SupportTitle">Câu hỏi thường gặp</div>
            <div class="SupportDiv">
                <div class="SupportQuestion">Q: Làm thế nào để có được Vouchers giảm giá đơn hàng?</div>
                <div class="SupportAnswer">A: Bạn có thể vào các trang flash sale và ưu đãi trong thời gian giới hạn để nhận Vouchers miễn phí, ngoài ra còn có thể nhận Vouchers từ ưu đãi thẻ thành viên.</div>
                <div class="SupportQuestion">Q: Làm thế nào để theo dõi đơn hàng?</div>
                <div class="SupportAnswer">A: Bạn có thể vào trang quản lý tài khoản, kiểm tra phần "lịch sử mua hàng" để xem chi tiết trạng thái đơn hàng đã đặt.</div>
                <div class="SupportQuestion">Q: Thời gian giao hàng khoảng bao lâu?</div>
                <div class="SupportAnswer">A: Khoảng 1-3 ngày tính từ lúc bạn đặt hàng, phụ thuộc vào khu vực và vị trí của bạn. Có thể giao hàng lâu hơn vào ngày lễ nhất định.</div>
            </div>
        </div>
    </div>
    <div class="SupportConnect">
        <div class="spSocial">Liên hệ & hỗ trợ trực tuyến: sportadgym@gmail.com,</div>
        <div class="spSocial">số điện thoại: 0922482619,</div>
        <div class="spSocial">zalo: 0922482619.</div>
    </div>
</div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>

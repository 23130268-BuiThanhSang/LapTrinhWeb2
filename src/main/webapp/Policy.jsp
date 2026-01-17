<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Chính Sách Cửa Hàng</title>
    <link rel="stylesheet" href="CSS/Style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
<jsp:include page="/Share/header.jsp" />
<div class="SupportCustomer">
    <h2 id="SupportHeader">Chính Sách Cửa Hàng</h2>
    <div class="SupportGroup">
        <div class="SupportBox">
            <div class="SupportTitle">Chính sách bảo hành</div>
            <div class="SupportDiv">
                <div class="SupportGuide">
                    Các sản phẩm chính hãng được bảo hành, đổi trả trong vòng 6-12 tháng nếu phát sinh lỗi kỹ thuật không mong muốn.
                    Khách hàng cần gửi mô tả, hình ảnh, hoặc video để xác minh tình trạng sản phẩm.
                    Sản phẩm đổi trả cần giữ nguyên trạng thái ban đầu, tem sản phẩm, không hư hỏng hoặc sửa chữa trái phép.
                    Vui lòng giữ phiếu bảo hành để được hỗ trợ tốt nhất.
                </div>
            </div>
        </div>
        <div class="SupportBox">
            <div class="SupportTitle">Chính sách đổi trả</div>
            <div class="SupportDiv">
                <div class="SupportGuide">
                    Trong vòng 7 ngày kể từ ngày nhận hàng, khách hàng được quyền đổi trả nếu sản phẩm không đúng mô tả, bị lỗi hoặc không vừa ý.
                    Sản phẩm phải còn nguyên vẹn, đầy đủ phụ kiện, chưa qua sử dụng.
                    Các trường hợp đổi trả sẽ không được áp dụng nếu sản phẩm đã qua sử dụng hoặc không còn nguyên trạng.
                </div>
            </div>
        </div>
        <div class="SupportBox">
            <div class="SupportTitle">Chính sách vận chuyển & giao hàng</div>
            <div class="SupportDiv">
                <div class="SupportGuide">
                    Đơn hàng sẽ được giao từ 1-3 ngày làm việc tùy khu vực và địa chỉ nhận hàng.
                    Phí vận chuyển do khách hàng thanh toán (trừ các chương trình miễn phí ship) và sẽ hiển thị rõ ở trang xác nhận đặt hàng.
                </div>
            </div>
        </div>
<%--        <div class="SupportBox">--%>
<%--            <div class="SupportTitle">Chính sách hoàn tiền</div>--%>
<%--            <div class="SupportDiv">--%>
<%--                <div class="SupportGuide">--%>
<%--                    Sau khi yêu cầu đổi trả được chấp nhận, khách hàng sẽ được hoàn tiền qua hình thức chuyển khoản ngân hàng hoặc tiền mặt tại cửa hàng tùy từng trường hợp cụ thể.--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
    <div class="SupportConnect">
        <div class="spSocial">Liên hệ hỗ trợ: 23130268@st.hcmuaf.edu.vn</div>
        <div class="spSocial">Số điện thoại: 0829811312</div>
        <div class="spSocial">Zalo: 0829811312</div>
    </div>
</div>
<jsp:include page="/Share/footer.jsp" />
<script src="JS/Notification.js"></script>
</body>
</html>
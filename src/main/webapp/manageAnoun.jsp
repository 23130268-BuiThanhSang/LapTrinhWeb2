<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <link rel="stylesheet" href="CSS/manageUser.css">
    <link rel="stylesheet" href="CSS/manageAnoun.css">

</head>
<body>
<div class="MainUI">
    <jsp:include page="/Share/admin_leftbar.jsp" />
    <div class = "HighlightBox">
    <div class="manageAnoun">
        <h1>Thông báo</h1>
        <div class="form-group">
            <label for="audience">Gửi đến:</label>
            <select id="audience">
                <option value="all">Toàn bộ người dùng</option>
                <option value="non_mem">Ko có membership</option>
                <option value="members">Có membership</option>
            </select>
        </div>
        <div class="form-group">
            <label for="exp_date">Ngày hết hạn</label>
            <div id="exp_date">
                <input id = "exp_day" placeholder="Nhập ngày hết hạn">
                <select id="month">
                    <option value="">Month</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                </select>
                <input id = "exp_year" placeholder="Nhập năm hết hạn">
            </div>
        </div>

        <div class="form-group">
            <label for="content">Nội dung thông báo</label>
            <textarea id="content" placeholder="Nhập nội dung thông báo..."></textarea>
        </div>
        <div class="form-group">
            <label for="targetUrl">URL trang đích khi người dùng nhấn thông báo (tùy chọn):</label>
            <input type="text" id="targetUrl" placeholder="https://example.com/page" />
        </div>
        <button class="submit-btn">Phát Thông Báo</button>
    </div>
    </div>
</div>
</body>
</html>


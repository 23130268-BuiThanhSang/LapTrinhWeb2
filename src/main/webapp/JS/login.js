function clearMessagesAndResetHeight() {
    // xóa nội dung error/success
    document.querySelectorAll('.error, .success').forEach(span => {
        span.innerText = '';
    });

    // bỏ class has-message trên mọi page
    document.querySelectorAll('.page').forEach(p => {
        p.classList.remove('has-message');
    });
}

// CHỈ áp dụng height cho page đang hiển thị (display != none)
function updatePageHeightForMessages() {
    document.querySelectorAll('.page').forEach(page => {
        const style = window.getComputedStyle(page);
        console.log(page.id, 'display =', style.display);

        if (style.display === 'none') {
            page.classList.remove('has-message');
            return;
        }

        const msgs = page.querySelectorAll('.error, .success');
        let hasText = false;

        msgs.forEach(m => {
            if (m.innerText && m.innerText.trim().length > 0) {
                hasText = true;
            }
        });

        console.log(page.id, 'hasText =', hasText);

        if (hasText) {
            page.classList.add('has-message');
        } else {
            page.classList.remove('has-message');
        }
    });
}

function showPage(pageId) {
    // khi user tự bấm đổi form -> xóa message cũ + height
    clearMessagesAndResetHeight();

    document.querySelectorAll('.page').forEach(p => {
        p.style.display = "none";
    });

    const page = document.getElementById(pageId);
    if (page) {
        page.style.display = "block";
    }

    // tính lại height chỉ cho page mới mở
    updatePageHeightForMessages();
}

// KHI FORWARD TỪ SERVER
window.addEventListener('load', function () {
    // Chỉ đọc message hiện có và tăng height cho page đang hiển thị
    updatePageHeightForMessages();
    // KHÔNG gọi clearMessagesAndResetHeight() ở đây
});
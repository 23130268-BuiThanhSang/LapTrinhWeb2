function clearMessagesAndResetHeight() {
    document.querySelectorAll('.error, .success').forEach(span => {
        span.innerText = '';
    });

    document.querySelectorAll('.page').forEach(p => {
        p.classList.remove('has-message');
    });
}

function updatePageHeightForMessages() {
    document.querySelectorAll('.page').forEach(page => {
        // lấy tất cả span error/success bên trong page đó
        const msgs = page.querySelectorAll('.error, .success');
        let hasText = false;

        msgs.forEach(m => {
            if (m.innerText && m.innerText.trim().length > 0) {
                hasText = true;
            }
        });

        if (hasText) {
            page.classList.add('has-message');   // tăng height
        } else {
            page.classList.remove('has-message'); // trả lại bình thường
        }
    });
}

function showPage(pageId) {
    // khi chuyển form: xóa thông báo và reset height
    clearMessagesAndResetHeight();

    document.querySelectorAll('.page').forEach(p => {
        p.style.display = "none";
    });

    const page = document.getElementById(pageId);
    if (page) {
        page.style.display = "block";
    }
}

window.addEventListener('load', function () {
    updatePageHeightForMessages();
});

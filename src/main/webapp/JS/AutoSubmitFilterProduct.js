/**
 * thực hiện cho phép auto submit form lọc sản phẩm
 */
document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('filterForm');

    // 🔁 SYNC dataset.checked với trạng thái checked từ server
    document.querySelectorAll('#filterForm input[type=radio]').forEach(radio => {
        radio.dataset.checked = radio.checked ? 'true' : 'false';
    });
    /**
     * RADIO: cho phép hủy chọn (uncheck) khi click lại vào radio đã chọn
     */
    document.querySelectorAll('#filterForm input[type=radio]').forEach(radio => {
        radio.addEventListener('click', function (e) {
            if (this.dataset.checked === 'true') {
                e.preventDefault();
                this.checked = false;
                this.dataset.checked = 'false';
                form.submit();
            } else {
                document
                    .querySelectorAll(`input[name="${this.name}"]`)
                    .forEach(r => r.dataset.checked = 'false');

                this.checked = true;
                this.dataset.checked = 'true';
                form.submit();
            }
        });
    });

});

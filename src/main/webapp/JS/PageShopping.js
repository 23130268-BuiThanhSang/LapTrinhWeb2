function toggleAllProducts() {
    const selectAll = document.getElementById('selectAllCheckbox');
    const itemCheckboxes = document.querySelectorAll('.item-checkbox');
    itemCheckboxes.forEach(cb => cb.checked = selectAll.checked);
}

// ===== HÀM DÙNG CHUNG =====
async function confirmAndRemoveItem(item) {
    const confirmed = await showConfirmModal(
        "Xác nhận xóa sản phẩm?",
        "Bạn có chắc muốn xóa sản phẩm này khỏi giỏ hàng không?",
        "Xóa",
        "Hủy"
    );

    if (confirmed) {
        item.remove();
    }
}

function ProductQuantityHandlers() {
    document.querySelectorAll('.ItemProductInshoppingCart').forEach(function (item) {

        const buttons = item.querySelectorAll('.QuantityBoxForProduct button');
        if (buttons.length < 2) return;

        const minusBtn = buttons[0];
        const plusBtn = buttons[1];
        const quantitySpan = item.querySelector('.QuantityBoxForProduct .quantity');
        const deleteBtn = item.querySelector('.QuantityBoxForProduct .delProduct');

        // ===== NÚT + =====
        plusBtn.onclick = function () {
            let quantity = parseInt(quantitySpan.textContent);
            quantitySpan.textContent = quantity + 1;
        };

        // ===== NÚT - =====
        minusBtn.onclick = async function () {
            let quantity = parseInt(quantitySpan.textContent);

            if (quantity > 1) {
                quantitySpan.textContent = quantity - 1;
            } else {
                await confirmAndRemoveItem(item);
            }
        };

        // ===== NÚT XÓA =====
        if (deleteBtn) {
            deleteBtn.onclick = async function () {
                await confirmAndRemoveItem(item);
            };
        }
    });
}

function showConfirmModal(title, message, confirmText = 'Xóa', cancelText = 'Hủy') {
    return new Promise(function (resolve) {
        const modal = document.getElementById('deleteProductModal');
        const modalTitle = document.getElementById('modalTitle');
        const modalMessage = document.getElementById('modalMessage');
        const okBtn = document.getElementById('modalDeleteConfirm');
        const cancelBtn = document.getElementById('modalDeleteCancel');

        modalTitle.textContent = title;
        modalMessage.textContent = message;
        okBtn.textContent = confirmText;
        cancelBtn.textContent = cancelText;

        modal.style.display = 'flex';

        // Hủy sự kiện cũ trước khi gắn mới!
        okBtn.onclick = function () {
            modal.style.display = 'none';
            resolve(true);
        }
        cancelBtn.onclick = function () {
            modal.style.display = 'none';
            resolve(false);
        }
    });
}

document.addEventListener("DOMContentLoaded", function () {
    ProductQuantityHandlers();

    const btn = document.getElementById('deleteCartBtn');
    if (btn) {
        btn.addEventListener('click', async function () {
            const ok = await showConfirmModal(
                'Xác nhận xóa giỏ hàng?',
                'Bạn có chắc muốn xóa tất cả sản phẩm trong giỏ hàng không?',
                'Xóa hết',
                'Hủy'
            );
            if (ok) {
                const products = document.querySelector('.ListProductInnerScroll');
                if (products) products.innerHTML = "";
            }
        });
    }
    // Nút Đặt hàng -> xóa các item đã được tích rồi hiện modal
    const placeBtn = document.getElementById('placeOrderBtn');
    if (placeBtn) {
        placeBtn.addEventListener('click', async function (e) {
            e.preventDefault();

            // 1) Lấy tất cả checkbox đã checked
            const checkedBoxes = document.querySelectorAll('.item-checkbox:checked');

            // 2) Xóa từng item tương ứng
            checkedBoxes.forEach(cb => {
                // tìm wrapper .ItemProductInshoppingCart gần nhất và remove
                const item = cb.closest('.ItemProductInshoppingCart');
                if (item) item.remove();
            });

            // 4) Hiện modal đặt hàng hoàn tất
            const res = await showOrderCompleteModal();
            if (res === 'view') {
                window.location.href = historyUrl;
            }

        });
    }
});

function showOrderCompleteModal(title, message, viewText, backText) {
    return new Promise(function (resolve) {
        const modal = document.getElementById('orderCompleteModal');
        const modalTitle = document.getElementById('orderModalTitle');
        const modalMessage = document.getElementById('orderModalMessage');
        const viewBtn = document.getElementById('orderViewBtn');
        const backBtn = document.getElementById('orderBackBtn');

        if (typeof title !== 'undefined') modalTitle.textContent = title;
        if (typeof message !== 'undefined') modalMessage.textContent = message;
        if (typeof viewText !== 'undefined') viewBtn.textContent = viewText;
        if (typeof backText !== 'undefined') backBtn.textContent = backText;

        modal.style.display = 'flex';

        viewBtn.onclick = function () { modal.style.display = 'none'; resolve('view'); };
        backBtn.onclick = function () { modal.style.display = 'none'; resolve('back'); };
    });
}
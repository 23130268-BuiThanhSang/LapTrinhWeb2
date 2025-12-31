function toggleAllProducts() {
    const selectAll = document.getElementById('selectAllCheckbox');
    const itemCheckboxes = document.querySelectorAll('.item-checkbox');
    itemCheckboxes.forEach(cb => cb.checked = selectAll.checked);
}

function ProductQuantityHandlers() {
    document.querySelectorAll('.ItemProductInshoppingCart').forEach(function(item) {
        const minusBtn = item.querySelector('.QuantityBoxForProduct button:first-child');
        const plusBtn = item.querySelector('.QuantityBoxForProduct button:last-child');
        const quantitySpan = item.querySelector('.QuantityBoxForProduct span');

        minusBtn.onclick = null;
        plusBtn.onclick = null;

        plusBtn.onclick = function() {
            let quantity = parseInt(quantitySpan.textContent);
            quantitySpan.textContent = quantity + 1;
        };

        minusBtn.onclick = async function() {
            let quantity = parseInt(quantitySpan.textContent);
            if (quantity > 1) {
                quantitySpan.textContent = quantity - 1;
            } else {
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
        };;
    });
}

function showConfirmModal(title, message, confirmText = 'Xóa', cancelText = 'Hủy') {
    return new Promise(function(resolve) {
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
        okBtn.onclick = function() {
            modal.style.display = 'none';
            resolve(true);
        }
        cancelBtn.onclick = function() {
            modal.style.display = 'none';
            resolve(false);
        }
    });
}

document.addEventListener("DOMContentLoaded", function() {
    ProductQuantityHandlers();

    var btn = document.getElementById('deleteCartBtn');
    if(btn) {
        btn.addEventListener('click', async function() {
            const ok = await showConfirmModal(
                'Xác nhận xóa giỏ hàng?',
                'Bạn có chắc muốn xóa tất cả sản phẩm trong giỏ hàng không?',
                'Xóa hết',
                'Hủy'
            );
            if(ok) {
                const products = document.querySelector('.ListProductInnerScroll');
                if(products) products.innerHTML = "";
            }
        });
    }
});






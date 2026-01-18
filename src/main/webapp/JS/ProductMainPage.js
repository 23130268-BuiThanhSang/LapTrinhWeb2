document.addEventListener("DOMContentLoaded", () => {
    // ====== TABS ======
    const tabButtons = document.querySelectorAll(".TabButton");
    const tabContents = document.querySelectorAll(".TabContent");

    // Nếu không có tab (trang khác) thì bỏ qua
    if (tabButtons.length > 0 && tabContents.length > 0) {
        tabButtons.forEach((button, index) => {
            button.addEventListener("click", () => {
                // Bỏ active nút & nội dung cũ
                tabButtons.forEach(b => b.classList.remove("active"));
                tabContents.forEach(c => c.classList.remove("active"));

                // Set active cho nút được click và tab nội dung cùng index
                button.classList.add("active");
                if (tabContents[index]) {
                    tabContents[index].classList.add("active");
                }
            });
        });
    }

    // ====== IMAGE THUMBNAIL PREVIEW (giữ như cũ) ======
    const mainImage = document.querySelector(".MainImage");
    const thumbButtons = document.querySelectorAll(".ThumbButton img");

    if (mainImage && thumbButtons.length > 0) {
        thumbButtons.forEach(thumb => {
            thumb.addEventListener("click", () => {
                mainImage.src = thumb.src;
            });
        });
        ProductQuantityHandlers();
    }
});

function ProductQuantityHandlers() {
    const minus = document.querySelector(".qty-minus");
    const plus = document.querySelector(".qty-plus");
    const quantityEl = document.querySelector(".quantity");

    if (!minus || !plus || !quantityEl) return;

    let quantity = parseInt(quantityEl.innerText);

    plus.addEventListener("click", () => {
        quantity++;
        quantityEl.innerText = quantity;
    });

    minus.addEventListener("click", () => {
        if (quantity > 1) {
            quantity--;
            quantityEl.innerText = quantity;
        }
    });
}

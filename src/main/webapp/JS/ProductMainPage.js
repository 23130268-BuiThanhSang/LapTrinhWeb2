document.addEventListener("DOMContentLoaded", () => {

    // ====== TABS ======
    const tabButtons = document.querySelectorAll(".TabButton");
    const tabContents = document.querySelectorAll(".TabContent");

    tabButtons.forEach((btn, i) => {
        btn.addEventListener("click", () => {
            tabButtons.forEach(b => b.classList.remove("active"));
            tabContents.forEach(c => c.classList.remove("active"));

            btn.classList.add("active");
            tabContents[i]?.classList.add("active");
        });
    });

    ProductQuantityHandlers();
});

// ====== QUANTITY ======
function ProductQuantityHandlers() {
    const minus = document.querySelector(".qty-minus");
    const plus = document.querySelector(".qty-plus");
    const quantityEl = document.querySelector(".quantity");
    const unitPriceEl = document.getElementById("unitPrice");
    const totalPriceEl = document.getElementById("totalPrice");

    if (!minus || !plus || !quantityEl || !unitPriceEl || !totalPriceEl) return;
    let quantity = parseInt(quantityEl.innerText);
    const unitPrice = parseFloat(unitPriceEl.dataset.price);
    function updateTotal() {
        totalPriceEl.innerText = (unitPrice * quantity).toFixed(1);
    }
    plus.onclick = () => {
        quantity++;
        quantityEl.innerText = quantity;
        updateTotal();
    };
    minus.onclick = () => {
        if (quantity > 1) {
            quantity--;
            quantityEl.innerText = quantity;
            updateTotal();
        }
    };
}

// ====== IMAGE PREVIEW ======
function changeMainImage(el) {
    document.getElementById("mainImage").src = el.src;

    document.querySelectorAll(".GalleryThumb")
        .forEach(img => img.classList.remove("active"));
    el.classList.add("active");
}


function changeColor(el) {
    const selectedColor = el.dataset.color;

    console.log("Selected:", selectedColor);

    // active màu
    document.querySelectorAll(".ColorThumb")
        .forEach(c => c.classList.remove("active"));
    el.classList.add("active");

    const thumbs = document.querySelectorAll(".GalleryThumb");
    let firstVisible = null;

    const colorText = document.getElementById("selectedColorText");
    if (colorText) {
        colorText.innerText = selectedColor;
    }

    thumbs.forEach(img => {
        if (img.dataset.color === selectedColor) {
            img.style.display = "";
            if (!firstVisible) firstVisible = img;
        } else {
            img.style.display = "none";
        }
    });

    // nếu KHÔNG tìm được ảnh nào → fallback
    if (!firstVisible) {
        console.warn("No image for color:", selectedColor);
        thumbs.forEach(img => img.style.display = "");
        return;
    }

    changeMainImage(firstVisible);
}



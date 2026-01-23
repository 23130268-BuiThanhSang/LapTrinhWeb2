document.addEventListener("DOMContentLoaded", function () {
    const addSection = document.getElementById("AddProductSection");
    const searchSection = document.getElementById("SearchProductSection");
    const groupSection = document.getElementById("AddGroupSection");

    const btnAdd = document.getElementById("btnAddProduct");
    const btnSearch = document.getElementById("btnSearchProduct");
    const btnGroup = document.getElementById("btnAddGroup");

    // Helper: hide all sections
    function hideAllSections() {
        addSection.style.display = "none";
        searchSection.style.display = "none";
        groupSection.style.display = "none";
    }

    // Helper: remove active class from all buttons
    function clearActiveTabs() {
        btnAdd.classList.remove("activeTab");
        btnSearch.classList.remove("activeTab");
        btnGroup.classList.remove("activeTab");
    }

    // Add product
    btnAdd.addEventListener("click", function () {
        hideAllSections();
        clearActiveTabs();

        addSection.style.display = "block";
        btnAdd.classList.add("activeTab");
    });

    // Search product
    btnSearch.addEventListener("click", function () {
        hideAllSections();
        clearActiveTabs();

        searchSection.style.display = "block";
        btnSearch.classList.add("activeTab");
    });

    // Add product group
    btnGroup.addEventListener("click", function () {
        hideAllSections();
        clearActiveTabs();

        groupSection.style.display = "block";
        btnGroup.classList.add("activeTab");
    });

    const variantContainer = document.getElementById("VariantContainer");
    const btnAddVariant = document.getElementById("btnAddVariant");
    const productTypeSelect = document.querySelector("select[name='category']");

    let variantIndex = 0;

    const SIZE_OPTIONS_BY_TYPE = {
        4: [35, 36, 37, 38, 39, 40, 41, 42, 43],
        3: ["S", "M", "L", "XL", "XXL"],
        2: ["Free Size"],
        1: null
    };

    btnAddVariant.addEventListener("click", function () {
        addVariantCard();
    });

    function getSizeOptions() {
        const type = productTypeSelect.value;
        return SIZE_OPTIONS_BY_TYPE[type];
    }

    function buildSizeField(index, selectedValue = "") {
        const sizes = getSizeOptions();
        if (sizes == null) {
            return `
            <input type="text"
                   name="variants[${index}].size"
                   placeholder="Nhập kích thước"
                   value="${selectedValue || ""}"
                   required>
        `;
        }

        let html = `
        <select name="variants[${index}].size" required>
            <option value="">-- Chọn size --</option>
    `;

        sizes.forEach(size => {
            const selected = size == selectedValue ? "selected" : "";
            html += `<option value="${size}" ${selected}>${size}</option>`;
        });

        html += `</select>`;
        return html;
    }


    function getLastVariantData() {
        const cards = variantContainer.querySelectorAll(".VariantCard");
        if (cards.length === 0) return null;

        const last = cards[cards.length - 1];

        return {
            color: last.querySelector("select[name*='.color']")?.value || "",
            size: last.querySelector("select[name*='.size']")?.value || "",
            price: last.querySelector("input[name*='.price']")?.value || "",
            stock: last.querySelector("input[name*='.stock']")?.value || ""
        };
    }

    function addVariantCard() {
        const index = variantIndex++;
        const lastData = getLastVariantData();

        const card = document.createElement("div");
        card.className = "VariantCard";

        card.innerHTML = `
            <div class="VariantHeader">
                <span>Biến thể #${index + 1}</span>
                <button type="button" class="RemoveVariantBtn">✕</button>
            </div>
        
            <!-- Row 1: color, size, price, stock -->
            <div class="VariantRow VariantRow-Top">
        
                <div class="VariantField">
                    <label>Màu sắc:</label>
                    <select name="variants[${index}].color" required>
                        <option value="">-- Chọn màu --</option>
                        ${["Tím","Nâu","Đen","Trắng","Bạc","Hồng","Xanh Navy","Xanh Dương","Xanh Lục","Vàng","Đỏ","Cam"]
                    .map(c => `<option value="${c}" ${lastData?.color === c ? "selected" : ""}>${c}</option>`)
                    .join("")}
                    </select>
                </div>
        
                <div class="VariantField">
                    <label>Kích cỡ:</label>
                    ${buildSizeField(index, lastData?.size)}
                </div>

        
                <div class="VariantField">
                    <label>Giá:</label>
                    <input type="number"
                           name="variants[${index}].price"
                           min="0"
                           value="${lastData?.price || ""}"
                           required>
                </div>
        
                <div class="VariantField">
                    <label>Tồn kho:</label>
                    <input type="number"
                           name="variants[${index}].stock"
                           min="0"
                           value="${lastData?.stock || ""}"
                           required>
                </div>
        
            </div>
        
            <!-- Row 2: images -->
            <div class="VariantRow VariantRow-Bottom">
                <div class="VariantField">
                    <label>Hình ảnh:</label>
                    <input type="file"
                           name="variants[${index}].images"
                           multiple
                           accept="image/*">
                </div>
            </div>
        `;

        card.querySelector(".RemoveVariantBtn").addEventListener("click", function () {
            card.remove();
        });

        variantContainer.appendChild(card);
    }

    // When product type changes → update ALL variant size dropdowns
    productTypeSelect.addEventListener("change", function () {
        variantContainer.querySelectorAll(".VariantCard").forEach((card, i) => {
            const sizeField = card.querySelector(".VariantField:nth-child(2)");
            sizeField.innerHTML = `
            <label>Kích cỡ:</label>
            ${buildSizeField(i)}
        `;
        });
    });

});
